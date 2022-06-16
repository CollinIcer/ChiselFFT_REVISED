import sys
import os
from phgl_imp import *

class fft128_core(module):
    def set_port(self):
        super(fft128_core,self).set_port()
        #self.io.var(inp('clk',w=1))
        #self.io.var(inp('resetn',w=1))
        self.io.var(inp('din_start',w=1))
        self.io.var(inp('din_vld',w=1))
        self.io.var(inp('din0_i',w=12))
        self.io.var(inp('din0_q',w=12))
        self.io.var(inp('din1_i',w=12))
        self.io.var(inp('din1_q',w=12))
        self.io.var(inp('din2_i',w=12))
        self.io.var(inp('din2_q',w=12))
        self.io.var(inp('din3_i',w=12))
        self.io.var(inp('din3_q',w=12))
        self.io.var(outp('dout_done',w=1))
        self.io.var(outp('dout_vld',w=1))
        self.io.var(outp('dout0_i',w=12))
        self.io.var(outp('dout0_q',w=12))
        self.io.var(outp('dout1_i',w=12))
        self.io.var(outp('dout1_q',w=12))
        self.io.var(outp('dout2_i',w=12))
        self.io.var(outp('dout2_q',w=12))
        self.io.var(outp('dout3_i',w=12))
        self.io.var(outp('dout3_q',w=12))

    def main(self):
        super(fft128_core, self).main()
        #self.io.dout_vld /= self.io.din_vld
