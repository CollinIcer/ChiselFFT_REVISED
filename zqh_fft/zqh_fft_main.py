import sys
import os
from phgl_imp import *
from .zqh_fft_parameters import zqh_fft_parameter
from zqh_tilelink.zqh_tilelink_node_module_main import zqh_tilelink_node_module
from .zqh_fft_bundles import zqh_fft_io
from .fft128_core_main import fft128_core

class zqh_fft(zqh_tilelink_node_module):
    def set_par(self):
        super(zqh_fft, self).set_par()
        self.p = zqh_fft_parameter()

    def gen_node_tree(self):
        super(zqh_fft, self).gen_node_tree()
        self.gen_node_slave(
            'fft_slave', 
            tl_type = 'tl_uh', 
            bundle_p = self.p.gen_tl_bundle_p())
        self.p.fft_slave.print_up()
        self.p.fft_slave.print_address_space()

    def set_port(self):
        super(zqh_fft, self).set_port()
        self.io.var(zqh_fft_io('fft'))

    def main(self):
        super(zqh_fft, self).main()
        self.gen_node_interface('fft_slave')
        assert(self.tl_in[0].a.bits.data.get_w() >= 32)

        txdata_write = bits(init = 0)
        def func_txdata_write_data(reg_ptr, fire, address, size, wdata, mask_bit):
            with when(fire):
                reg_ptr /= wdata[23:0]
                tmp = txdata_write
                tmp /= 1
            return (1, 1)
        self.cfg_reg(csr_reg_group(
            'txdata', 
            offset = 0x000, 
            size = 4, 
            fields_desc = [
                csr_reg_field_desc('data', access = 'VOL', width = 24, write = func_txdata_write_data, comments = '''\
Transmit data for fft input, 128 data once;
Reading from txdata returns the current value ''')]))

        rxdata_read = bits(init = 0)
        def func_rxdata_read_data(reg_ptr, fire, address, size, mask_bit):
            with when(fire):
                tmp = rxdata_read
                tmp /= 1
            return (1, 1, reg_ptr)
        self.cfg_reg(csr_reg_group(
            'rxdata', 
            offset = 0x004, 
            size = 4, 
            fields_desc = [
                csr_reg_field_desc('data', access = 'VOL', width = 24, read = func_rxdata_read_data, comments = '''\
Received data
Reading the rxdata register for fft result, 128 data once''')]))

        self.cfg_reg(csr_reg_group(
            'txctrl', 
            offset = 0x008, 
            size = 4, 
            fields_desc = [
                csr_reg_field_desc('txen', width = 1, reset = 0, comments = '''\
fft enable''')]))
        self.cfg_reg(csr_reg_group(
            'rxctrl',
            offset = 0x00c,
            size = 4,
            fields_desc = [
                #csr_reg_field_desc('flush', width = 1, reset = 0, comments = '''\
#flush rx fifo'''), 
                csr_reg_field_desc('rxen', width = 1, reset = 0, comments = '''\
Receive enable''')]))
        self.cfg_reg(csr_reg_group(
            'status', 
            offset = 0x010, 
            size = 4, 
            fields_desc = [
                csr_reg_field_desc('rx_cnt', access = 'RO', width = 8, reset = 0, comments = '''\
rx fifo's current entry number''')]))

        tx_do = bits('tx_do')
        tx_do /= self.regs['txctrl'].txen 

        tx_data_cnt = reg_r(w = 7)

        with when(tx_do):
            with when(txdata_write):
                tx_data_cnt /= tx_data_cnt + 1
        with other():
            tx_data_cnt /= 0

        fft_start = reg_r(w = 1)
        fft_din_vld = reg_r(w = 1)
        fft_din0 = reg_r(w = 24)
        fft_din1 = reg_r(w = 24)
        fft_din2 = reg_r(w = 24)
        fft_din3 = reg_r(w = 24)
        with when(tx_do & txdata_write & (tx_data_cnt==0)) :
            fft_start /= 1
        with other():
            fft_start /= 0

        with when(tx_do & txdata_write & (tx_data_cnt[1:0]==3)) :
            fft_din_vld /= 1 
        with other():
            fft_din_vld /= 0

        with when(tx_do & txdata_write & (tx_data_cnt[1:0]==0)) :
            fft_din0 /= self.regs['txdata'].data

        with when(tx_do & txdata_write & (tx_data_cnt[1:0]==1)) :
            fft_din1 /= self.regs['txdata'].data

        with when(tx_do & txdata_write & (tx_data_cnt[1:0]==2)) :
            fft_din2 /= self.regs['txdata'].data

        with when(tx_do & txdata_write & (tx_data_cnt[1:0]==3)) :
            fft_din3 /= self.regs['txdata'].data


        #rx side
        #{{{
        fft_dout_vld = bits('fft_dout_vld')
        fft_dout0 = bits('fft_dout0', w = 24)
        fft_dout1 = bits('fft_dout1', w = 24)
        fft_dout2 = bits('fft_dout2', w = 24)
        fft_dout3 = bits('fft_dout3', w = 24)


        #rx_data fifo
        rx_fifo = queue(
            'rx_fifo', 
            gen = lambda _: bits(_, w = 96 ),#24*4 
            entries = self.p.rx_fifo_entries,
            flush_en = 1)
        self.regs['status'].rx_cnt /= rx_fifo.io.count
        #rx_fifo.io.flush /= self.regs['rxctrl'].flush
        rx_fifo.io.flush /= 0
        rx_fifo.io.enq.valid /= fft_dout_vld 
        rx_fifo.io.enq.bits /= cat([fft_dout0,fft_dout1,fft_dout2,fft_dout3]) 

        rx_data_cnt = reg_r(w = 2)
        with when(self.regs['rxctrl'].rxen):
            with when(rxdata_read):
                rx_data_cnt /= rx_data_cnt+1
        with other():
                rx_data_cnt /= 0

        out_fifo = reg_r(w = 24*3)
        with when(rx_fifo.io.deq.valid):
            out_fifo /= rx_fifo.io.deq.bits[24*3-1:0]

        self.regs['rxdata'].data /= rx_fifo.io.deq.bits[24*4-1:24*3] if rx_data_cnt==0 else out_fifo[24*3-1:24*2] if rx_data_cnt==1 else out_fifo[24*2-1:24*1] if rx_data_cnt==2 else out_fifo[24*1-1:24*0] 

        rx_fifo.io.deq.ready /= rxdata_read & (rx_data_cnt==0)

        #int 
        self.int_out[0] /= 0
        #connet
        fft128 = fft128_core('fft128_core')
        fft128.io.din_start /= fft_start
        fft128.io.din_vld   /= fft_din_vld
        fft128.io.din0_i    /= fft_din0[12*2-1:12*1] 
        fft128.io.din0_q    /= fft_din0[12*1-1:12*0] 
        fft128.io.din1_i    /= fft_din1[12*2-1:12*1] 
        fft128.io.din1_q    /= fft_din1[12*1-1:12*0] 
        fft128.io.din2_i    /= fft_din2[12*2-1:12*1] 
        fft128.io.din2_q    /= fft_din2[12*1-1:12*0] 
        fft128.io.din3_i    /= fft_din3[12*2-1:12*1] 
        fft128.io.din3_q    /= fft_din3[12*1-1:12*0] 
        fft_dout_vld        /= fft128.io.dout_vld
        fft_dout0           /= cat([fft128.io.dout0_i,fft128.io.dout0_q])
        fft_dout1           /= cat([fft128.io.dout1_i,fft128.io.dout1_q])
        fft_dout2           /= cat([fft128.io.dout2_i,fft128.io.dout2_q])
        fft_dout3           /= cat([fft128.io.dout3_i,fft128.io.dout3_q])
