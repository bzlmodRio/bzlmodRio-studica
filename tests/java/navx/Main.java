package navx;

import com.kauailabs.navx.frc.AHRS;

public final class Main {
  private Main() {}

  public static void main(String[] args) {
    AHRS imu = new AHRS();
    System.out.println(imu);
  }
}
