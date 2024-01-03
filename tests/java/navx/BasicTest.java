package navx;

import com.kauailabs.navx.frc.AHRS;
import org.junit.jupiter.api.Test;

class BasicTest {
  @Test
  void basicTest() {
    AHRS imu = new AHRS();
    System.out.println(imu);
  }
}
