
package FFT

import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}
import firrtl.options.TargetDirAnnotation

object elaborateButterfly extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog"),
    Seq(ChiselGeneratorAnnotation(() => new Butterfly()),
      TargetDirAnnotation("Verilog"))
  )
}

object elaborateButterfly4 extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog"),
    Seq(ChiselGeneratorAnnotation(() => new Butterfly4()),
      TargetDirAnnotation("Verilog"))
  )
}

/*object elaborateButterfly4_TOP extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog"),
    Seq(ChiselGeneratorAnnotation(() => new Butterfly4_TOP()),
      TargetDirAnnotation("Verilog"))
  )
}*/

object elaborateREG_MEM extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog"),
    Seq(ChiselGeneratorAnnotation(() => new REG_MEM(32,8)),
      TargetDirAnnotation("Verilog"))
  )
}


object elaborateFFT extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog", "--full-stacktrace"),
    Seq(ChiselGeneratorAnnotation(() => new FFT()),
      TargetDirAnnotation("Verilog"))
  )
}

object elaborateFFT_TOP extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog", "--full-stacktrace"),
    Seq(ChiselGeneratorAnnotation(() => new FFT_TOP()),
      TargetDirAnnotation("Verilog"))
  )
}

object elaborateFFTReorder extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog", "--full-stacktrace"),
    Seq(ChiselGeneratorAnnotation(() => new FFTReorder()),
      TargetDirAnnotation("Verilog"))
  )
}

object elaborateTOP extends App {
  (new chisel3.stage.ChiselStage).execute(
    Array("-X", "verilog", "--full-stacktrace"),
    Seq(ChiselGeneratorAnnotation(() => new TOP()),
      TargetDirAnnotation("Verilog"))
  )
}
