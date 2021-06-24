
package FFT

trait HasDataConfig {
  val DataWidth = 16
  val BinaryPoint = 12
}

trait HasElaborateConfig {
  val FFTLength = 1024
  val useGauss = false
  val supportIFFT = false
}


