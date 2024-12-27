package navxjava;

import com.studica.frc.AHRS;
import org.junit.jupiter.api.Test;

class BasicTest {
  @Test
  void basicTest() {
    try(AHRS imu = new AHRS(AHRS.NavXComType.kMXP_SPI)) {
      System.out.println(imu);
    }
  }
}
