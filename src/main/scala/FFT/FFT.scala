
package FFT

import chisel3._
import chisel3.experimental._
import chisel3.util._
import scala.math._

// R2MDC
class FFT extends Module
  with HasDataConfig
  with HasElaborateConfig {
  val io = IO(new Bundle {
    // 0: FFT  1: IFFT
    val mode = if(supportIFFT) Some(Input(Bool())) else None
    val dIn = Input(new MyComplex)
    val din_valid = Input(Bool())
    val dOut1 = Output(new MyComplex)
    val dOut2 = Output(new MyComplex)
    val dout_valid = Output(Bool())
    val busy = Output(Bool())
  })

  val mode = io.mode.getOrElse(false.B)
  val stages = log2Ceil(FFTLength)
  def sinTable(k: Int): Vec[FixedPoint] = {
    val times = (0 until FFTLength / 2 by pow(2, k).toInt)
      .map(i => -(i * 2 * Pi) / FFTLength.toDouble)
    val inits = times.map(t => FixedPoint.fromDouble(sin(t), DataWidth.W, BinaryPoint.BP))
    VecInit(inits)
  }
  def cosTable(k: Int): Vec[FixedPoint] = {
    val times = (0 until FFTLength / 2 by pow(2, k).toInt)
      .map(i => -(i * 2 * Pi) / FFTLength.toDouble)
    val inits = times.map(t => FixedPoint.fromDouble(cos(t), DataWidth.W, BinaryPoint.BP))
    VecInit(inits)
  }
  def sinTable2(k: Int): Vec[FixedPoint] = {
    val times = (0 until FFTLength / 2 by pow(2, k).toInt)
      .map(i => (i * 2 * Pi) / FFTLength.toDouble)
    val inits = times.map(t => FixedPoint.fromDouble(sin(t), DataWidth.W, BinaryPoint.BP))
    VecInit(inits)
  }
  def cosTable2(k: Int): Vec[FixedPoint] = {
    val times = (0 until FFTLength / 2 by pow(2, k).toInt)
      .map(i => (i * 2 * Pi) / FFTLength.toDouble)
    val inits = times.map(t => FixedPoint.fromDouble(cos(t), DataWidth.W, BinaryPoint.BP))
    VecInit(inits)
  }
  def wnTable(k: Int)(idx: UInt): MyComplex = {
    val res = Wire(new MyComplex)
    res.re := Mux(mode, cosTable2(k)(idx), cosTable(k)(idx))
    res.im := Mux(mode, sinTable2(k)(idx), sinTable(k)(idx))
    res
  }
  def timesInvn(a: MyComplex): MyComplex = {
    val b = Wire(new MyComplex)
    b.re := a.re >> stages
    b.im := a.im >> stages
    b
  }

  val cnt = RegInit(0.U((stages + 1).W))
  val busy = cnt =/= 0.U
  when(io.din_valid || busy){
    cnt := Mux(cnt === (FFTLength * 3 / 2 - 1).asUInt(), 0.U, cnt + 1.U)
  }
  io.busy := busy

  val out1 = VecInit(Seq.fill(stages + 1)(0.S((2 * DataWidth).W).asTypeOf(new MyComplex)))
  val out2 = VecInit(Seq.fill(stages + 1)(0.S((2 * DataWidth).W).asTypeOf(new MyComplex)))
  out1(0) := io.dIn
  out2(0) := io.dIn

  for (i <- 0 until stages - 1) {
    val wnCtrl = cnt(stages-2-i, 0)
    val wn = wnTable(i)(wnCtrl)
    val BF12 = Butterfly(ShiftRegister(out1(i), (FFTLength / pow(2, i + 1)).toInt), out2(i), wn)
    val swCtrl = cnt(stages-2-i)
    val sw12 = Switch(BF12._1, ShiftRegister(BF12._2, (FFTLength / pow(2, i + 2)).toInt), swCtrl)
    out1(i + 1) := sw12._1
    out2(i + 1) := sw12._2
  }
  val out1D1 = RegNext(out1(stages - 1))
  out1(stages) := ComplexAdd(out1D1, out2(stages - 1))
  out2(stages) := ComplexSub(out1D1, out2(stages - 1))
  val dout1 = Mux(mode, timesInvn(out1(stages)), out1(stages))
  val dout2 = Mux(mode, timesInvn(out2(stages)), out2(stages))

  io.dOut1 := RegNext(dout1)
  io.dOut2 := RegNext(dout2)
  io.dout_valid := RegNext(cnt) === (FFTLength - 1).asUInt()
}




class FFT_TOP extends Module
  with HasDataConfig
  with HasElaborateConfig {
  val io = IO(new Bundle{
    val in = Input(new MyComplex)
    val in_valid = Input(Bool())
    val out = Output(new MyComplex)
    val out_valid = Output(Bool())
  })

  val stages     =  log2Ceil(FFTLength)/2 //FFTLength is times of 4
  val out_ar     =  VecInit(Seq.fill(stages + 1)(0.S((2 * DataWidth).W).asTypeOf(new MyComplex)))
  val out_vld_ar =  VecInit(Seq.fill(stages + 1)(0.S(1.W).asTypeOf(new Bool)))
  out_ar(0)     := io.in
  out_vld_ar(0) := io.in_valid



    val BF4_0 = Butterfly4_TOP_0(out_ar(0), out_vld_ar(0)) 
    out_ar(1)     := BF4_0._1
    out_vld_ar(1) := BF4_0._2

    val BF4_1 = Butterfly4_TOP_1(out_ar(1), out_vld_ar(1)) 
    out_ar(2)     := BF4_1._1
    out_vld_ar(2) := BF4_1._2

    val BF4_2 = Butterfly4_TOP_2(out_ar(2), out_vld_ar(2)) 
    out_ar(3)     := BF4_2._1
    out_vld_ar(3) := BF4_2._2

    val BF4_3 = Butterfly4_TOP_3(out_ar(3), out_vld_ar(3)) 
    out_ar(4)     := BF4_3._1
    out_vld_ar(4) := BF4_3._2

    val BF4_4 = Butterfly4_TOP_4(out_ar(4), out_vld_ar(4)) 
    out_ar(5)     := BF4_4._1
    out_vld_ar(5) := BF4_4._2

   io.out       := RegNext(out_ar(5))
   io.out_valid := RegNext(out_vld_ar(5))

  
}
