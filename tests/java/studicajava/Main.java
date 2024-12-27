package studicajava;

import com.studica.frc.AHRS;

public final class Main {
  private Main() {}

  public static void main(String[] args) {
    AHRS imu = new AHRS(AHRS.NavXComType.kMXP_SPI);
    System.out.println(imu);
  }
}
