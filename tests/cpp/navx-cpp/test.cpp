
#include <chrono>
#include <iostream>
#include <thread>

#include "studica/AHRS.h"
#include "gtest/gtest.h"

TEST(BasicTest, Basic) {
  std::cout << "Hello World" << std::endl;

  studica::AHRS imu{studica::AHRS::kMXP_SPI};

  std::cout << "Running  some loops" << std::endl;
  for (int i = 0; i < 500; ++i) {
    std::this_thread::sleep_for(std::chrono::microseconds(20));
  }
  std::cout << "Done" << std::endl;
}
