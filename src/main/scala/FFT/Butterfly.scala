
package FFT

import chisel3._
import chisel3.experimental._
import chisel3.util._
import scala.math._

class MyComplex extends Bundle
  with HasDataConfig {
  val re = FixedPoint(DataWidth.W, BinaryPoint.BP)
  val im = FixedPoint(DataWidth.W, BinaryPoint.BP)
}

class ComplexOperationIO extends Bundle {
  val op1 = Input(new MyComplex())
  val op2= Input(new MyComplex())
  val res = Output(new MyComplex())
}

class ComplexAdd extends Module {
  val io = IO(new ComplexOperationIO)
  io.res.re := io.op1.re + io.op2.re
  io.res.im := io.op1.im + io.op2.im
}
object ComplexAdd {
  def apply(op1: MyComplex, op2: MyComplex):MyComplex = {
    val inst = Module(new ComplexAdd)
    inst.io.op1 := op1
    inst.io.op2 := op2
    inst.io.res
  }
}

class ComplexSub extends Module {
  val io = IO(new ComplexOperationIO)
  io.res.re := io.op1.re - io.op2.re
  io.res.im := io.op1.im - io.op2.im
}
object ComplexSub {
  def apply(op1: MyComplex, op2: MyComplex):MyComplex = {
    val inst = Module(new ComplexSub)
    inst.io.op1 := op1
    inst.io.op2 := op2
    inst.io.res
  }
}

class ComplexMul extends Module
  with HasElaborateConfig {
  val io = IO(new ComplexOperationIO)
  if (useGauss) {
    val k1 = io.op2.re * (io.op1.re + io.op1.im)
    val k2 = io.op1.re * (io.op2.im - io.op2.re)
    val k3 = io.op1.im * (io.op2.re + io.op2.im)
    io.res.re := k1 - k3
    io.res.im := k1 + k2
  } else {
    io.res.re := io.op1.re * io.op2.re - io.op1.im * io.op2.im
    io.res.im := io.op1.re * io.op2.im + io.op1.im * io.op2.re
  }
}
object ComplexMul {
  def apply(op1: MyComplex, op2: MyComplex):MyComplex = {
    val inst = Module(new ComplexMul)
    inst.io.op1 := op1
    inst.io.op2 := op2
    inst.io.res
  }
}

class ButterflyIO extends Bundle
  with HasDataConfig {
  val in1 = Input(new MyComplex())
  val in2 = Input(new MyComplex())
  val wn = Input(new MyComplex())
  val out1 = Output(new MyComplex())
  val out2 = Output(new MyComplex())
}

class Butterfly extends Module {
  val io = IO(new ButterflyIO())
  val add1 = ComplexAdd(io.in1, io.in2)
  val sub2 = ComplexSub(io.in1, io.in2)
  val mul2 = ComplexMul(sub2, io.wn)
  io.out1 := add1
  io.out2 := mul2
}
object Butterfly {
  def apply(in1: MyComplex, in2: MyComplex, wn: MyComplex): (MyComplex, MyComplex) = {
    val inst = Module(new Butterfly)
    inst.io.in1 := in1
    inst.io.in2 := in2
    inst.io.wn := wn
    (inst.io.out1, inst.io.out2)
  }
}


//==============================================================
//==============================================================
class Butterfly4IO extends Bundle
  with HasDataConfig {
  val in1 = Input(new MyComplex())
  val in2 = Input(new MyComplex())
  val in3 = Input(new MyComplex())
  val in4 = Input(new MyComplex())
  
  val out1 = Output(new MyComplex())
  val out2 = Output(new MyComplex())
  val out3 = Output(new MyComplex())
  val out4 = Output(new MyComplex())
}

class Butterfly4 extends Module {
  val io = IO(new Butterfly4IO())
  val b0 = ComplexAdd(io.in1, io.in3)
  val b1 = ComplexSub(io.in1, io.in3)
  val b2 = ComplexAdd(io.in2, io.in4)
  val b3 = ComplexSub(io.in2, io.in4)
  
  val b3j= Wire(new MyComplex())
  b3j.re := b3.im 
  b3j.im := -b3.re

  val c0 =  ComplexAdd(b0,b2)
  val c1 =  ComplexAdd(b1,b3j)
  val c2 =  ComplexSub(b0,b2)
  val c3 =  ComplexSub(b1,b3j)


  io.out1 := c0
  io.out2 := c1
  io.out3 := c2
  io.out4 := c3
}
object Butterfly4 {
  def apply(in1: MyComplex, in2: MyComplex, in3: MyComplex, in4: MyComplex): (MyComplex, MyComplex, MyComplex, MyComplex) = {
    val inst = Module(new Butterfly4)
    inst.io.in1 := in1
    inst.io.in2 := in2
    inst.io.in3 := in3
    inst.io.in4 := in4
   
    (inst.io.out1, inst.io.out2, inst.io.out3, inst.io.out4)
  }
}



class Butterfly4_TOP (RAM_DEPTH : Int,  LUT_DEPTH : Int, LAST_STAGE : Bool) extends Module with HasDataConfig with HasElaborateConfig{
val io = IO(new Bundle{
    val in = Input(new MyComplex)
    val in_valid = Input(Bool())
    val out = Output(new MyComplex)
    val out_valid = Output(Bool())
  })

//sin_con lut
def sin_lut(k: Int): Vec[FixedPoint] = {
    val times = (0 until FFTLength by pow(2, k).toInt)
      .map(i => -(i * 2 * Pi) / FFTLength.toDouble)
    val inits = times.map(t => FixedPoint.fromDouble(sin(t), DataWidth.W, BinaryPoint.BP))
    VecInit(inits)
  }
def cos_lut(k: Int): Vec[FixedPoint] = {
    val times = (0 until FFTLength  by pow(2, k).toInt)
      .map(i => -(i * 2 * Pi) / FFTLength.toDouble)
    val inits = times.map(t => FixedPoint.fromDouble(cos(t), DataWidth.W, BinaryPoint.BP))
    VecInit(inits)
  }
  
def wn_lut(k: Int)(idx: UInt): MyComplex = {
    val res = Wire(new MyComplex)
    res.re := cos_lut(k)(idx)
    res.im := sin_lut(k)(idx)
    res
  }

//

  val times = log2Ceil(FFTLength)
  val in_counter = RegInit(0.U(times.W))  
  val out_counter = RegInit(0.U(times.W))   
  val out_flag = RegInit(0.U(1.W))
  //val RAM_DEPTH = 4
  val cal_start_num  = RAM_DEPTH*3-1
  val out_flag_start = io.in_valid & (in_counter===cal_start_num.U)
  val out_flag_done  = out_counter===(FFTLength.U - 1.U)
  
  when(io.in_valid){in_counter := in_counter + 1.U}
  when(out_flag_start) {out_flag := 1.U}.elsewhen(out_flag_done){out_flag := 0.U}
  when(out_flag=/=0.U){out_counter := out_counter + 1.U}

  

 val RAM_AW    = log2Ceil(RAM_DEPTH)
 val ram0 = Mem(RAM_DEPTH, new MyComplex)
 val ram1 = Mem(RAM_DEPTH, new MyComplex)
 val ram2 = Mem(RAM_DEPTH, new MyComplex)
 
 val in_row = Wire(UInt(2.W)) 
     in_row := in_counter >> RAM_AW     //high 2bit
 val in_col = Wire(UInt(RAM_AW.W))     //lower bit
     in_col := in_counter

 val ram0_rdata = Wire(new MyComplex)
 val ram1_rdata = Wire(new MyComplex)
 val ram2_rdata = Wire(new MyComplex)
 val ram0_wdata = Wire(new MyComplex)
 val ram1_wdata = Wire(new MyComplex)
 val ram2_wdata = Wire(new MyComplex)

//Bf4 cal
 val bf4_res = Butterfly4( ram0_rdata, ram1_rdata, ram2_rdata, io.in)
 
//ram wr & rd
 val ram0_wr = Wire(UInt(1.W))
 val ram1_wr = Wire(UInt(1.W))
 val ram2_wr = Wire(UInt(1.W))

 when(ram0_wr=/=0.U){ram0.write(in_col, ram0_wdata)}.otherwise{}
 when(ram1_wr=/=0.U){ram1.write(in_col, ram1_wdata)}.otherwise{}
 when(ram2_wr=/=0.U){ram2.write(in_col, ram2_wdata)}.otherwise{}

 when(io.in_valid){                         
    when(in_row===0.U) {        ram0_wr := 1.U    
                                ram1_wr := 0.U
                                ram2_wr := 0.U
				ram0_wdata := io.in
				ram1_wdata := io.in
				ram2_wdata := io.in
    }.elsewhen(in_row===1.U) {  ram1_wr := 1.U    
                                ram0_wr := 0.U
                                ram2_wr := 0.U
				ram0_wdata := io.in
				ram1_wdata := io.in
				ram2_wdata := io.in
    }.elsewhen(in_row===2.U) {  ram2_wr := 1.U 
                                ram0_wr := 0.U
                                ram1_wr := 0.U
				ram0_wdata := io.in
				ram1_wdata := io.in
				ram2_wdata := io.in
    }.otherwise              {  ram0_wdata := bf4_res._2
	                        ram1_wdata := bf4_res._3 
                                ram2_wdata := bf4_res._4 
                                ram0_wr := 1.U
                                ram1_wr := 1.U
                                ram2_wr := 1.U}
}.otherwise{                    ram0_wr := 0.U
                                ram1_wr := 0.U
                                ram2_wr := 0.U
				ram0_wdata := io.in
				ram1_wdata := io.in
				ram2_wdata := io.in
}
 
//when(io.in_valid){ 
    ram0_rdata := ram0(out_counter)
    ram1_rdata := ram1(out_counter)
    ram2_rdata := ram2(out_counter)
//}

val out_row = Wire(UInt(2.W)) 
    out_row := out_counter >> RAM_AW     //high 2bit

val bf_res = Wire(new MyComplex)

when(out_row===0.U){bf_res := bf4_res._1 
}.elsewhen(out_row===1.U){bf_res := ram0_rdata
}.elsewhen(out_row===2.U){bf_res:= ram1_rdata}.otherwise{bf_res := ram2_rdata}

//mul sin/cos

val LUT_AW = log2Ceil(LUT_DEPTH)
val lut_id = 10-LUT_AW
val lut_adr_h = Wire(UInt(2.W))
val lut_adr_l = Wire(UInt((LUT_AW-2).W))
	lut_adr_h := out_counter >> (LUT_AW-2)
	lut_adr_l := out_counter
val lut_adr = lut_adr_l * lut_adr_h

//val wn = wn_lut(lut_id)(lut_adr)
//val out_tmp = ComplexMul(bf_res,wn)

val wn = Wire(new MyComplex)

when(LAST_STAGE){
io.out       := RegNext(bf_res)
io.out_valid := RegNext(out_flag)
wn := bf_res
}.otherwise{
wn           := wn_lut(lut_id)(lut_adr)
io.out       := RegNext(ComplexMul(bf_res,wn))
io.out_valid := RegNext(out_flag)
}

}

/*object Butterfly4_TOP {
  def apply(in1: MyComplex, in2: Bool ): (MyComplex, Bool) = {
    val inst = Module(new Butterfly4_TOP)
    inst.io.in := in1
    inst.io.in_valid := in2
    (inst.io.out, inst.io.out_valid)
  }
}
*/


object Butterfly4_TOP_0 {
  def apply(in1: MyComplex, in2: Bool ): (MyComplex, Bool) = {
    val inst = Module(new Butterfly4_TOP(1,16,false.B))
    inst.io.in := in1
    inst.io.in_valid := in2
    (inst.io.out, inst.io.out_valid)
  }
}


object Butterfly4_TOP_1 {
  def apply(in1: MyComplex, in2: Bool ): (MyComplex, Bool) = {
    val inst = Module(new Butterfly4_TOP(4,64,false.B))
    inst.io.in := in1
    inst.io.in_valid := in2
    (inst.io.out, inst.io.out_valid)
  }
}


object Butterfly4_TOP_2 {
  def apply(in1: MyComplex, in2: Bool ): (MyComplex, Bool) = {
    val inst = Module(new Butterfly4_TOP(16,256,false.B))
    inst.io.in := in1
    inst.io.in_valid := in2
    (inst.io.out, inst.io.out_valid)
  }
}


object Butterfly4_TOP_3 {
  def apply(in1: MyComplex, in2: Bool ): (MyComplex, Bool) = {
    val inst = Module(new Butterfly4_TOP(64,1024,false.B))
    inst.io.in := in1
    inst.io.in_valid := in2
    (inst.io.out, inst.io.out_valid)
  }
}

object Butterfly4_TOP_4 {
  def apply(in1: MyComplex, in2: Bool ): (MyComplex, Bool) = {
    val inst = Module(new Butterfly4_TOP(256,1024,true.B))
    inst.io.in := in1
    inst.io.in_valid := in2
    (inst.io.out, inst.io.out_valid)
  }
}
//====================RAM SIM==========================================
class REG_MEM (DW : Int, AW : Int) extends Module {
    val io = IO(new Bundle {
            val wr = Input(Bool())
            val wadr = Input(UInt(AW.W))
            val wdat = Input(UInt(DW.W))
            val rd   = Input(Bool())
            val radr = Input(UInt(AW.W))
            val rdat = Output(UInt(DW.W))
    })
    val RAM_DEPTH = pow(2, AW).toInt
    val ram = Mem(RAM_DEPTH, UInt(DW.W))
    when(io.wr){ ram.write(io.wadr, io.wdat) 
		 io.rdat := 0.U }.elsewhen(io.rd){io.rdat := RegNext(ram(io.radr))}.otherwise{ io.rdat := 0.U}
}



//==============================================================



class Switch extends Module {
  val io = IO(new Bundle{
    val in1 = Input(new MyComplex)
    val in2 = Input(new MyComplex)
    val sel = Input(Bool())
    val out1 = Output(new MyComplex)
    val out2 = Output(new MyComplex)
  })
  io.out1 := Mux(io.sel, io.in2, io.in1)
  io.out2 := Mux(io.sel, io.in1, io.in2)
}
object Switch {
  def apply(in1: MyComplex, in2: MyComplex, sel: Bool): (MyComplex, MyComplex) = {
    val inst = Module(new Switch)
    inst.io.in1 := in1
    inst.io.in2 := in2
    inst.io.sel := sel
    (inst.io.out1, inst.io.out2)
  }
}

