#pragma once

#include <frc/Encoder.h>
#include <frc/drive/DifferentialDrive.h>
#include <frc/kinematics/DifferentialDriveOdometry.h>
#include <frc/motorcontrol/PWMVictorSPX.h>
#include <frc/simulation/DifferentialDrivetrainSim.h>
#include <frc/simulation/EncoderSim.h>
#include <frc/simulation/SimDeviceSim.h>
#include <frc/smartdashboard/Field2d.h>
#include <frc2/command/SubsystemBase.h>
#include <hal/SimDevice.h>

#include "robot-cpp/subsystems/ports.hpp"
#include "studica/AHRS.h"

class DriveTrain : public frc2::SubsystemBase {
 public:
  DriveTrain();

  void ArcadeDrive(double throttle, double rotation);

  double GetHeading();

  void Reset();

  double GetAverageDistance();

  void UpdateOdometry();

  void Periodic() override;

  void SimulationPeriodic() override;

 private:
  void Log();

  frc::PWMVictorSPX m_leftMotorA{kDrivetrainMotorLeftAPort};
  frc::PWMVictorSPX m_leftMotorB{kDrivetrainMotorLeftBPort};

  frc::PWMVictorSPX m_rightMotorA{kDrivetrainMotorRightAPort};
  frc::PWMVictorSPX m_rightMotorB{kDrivetrainMotorRightBPort};

  frc::DifferentialDrive m_robotDrive{m_leftMotorA, m_rightMotorA};

  frc::Encoder m_leftEncoder{kDrivetrainEncoderLeftPortA,
                             kDrivetrainEncoderLeftPortB};
  frc::Encoder m_rightEncoder{kDrivetrainEncoderRightPortA,
                              kDrivetrainEncoderRightPortB};
  studica::AHRS m_gyro;

  frc::DifferentialDriveOdometry m_odometry{m_gyro.GetRotation2d(), 0_m, 0_m};
  frc::Field2d m_field;

  // Simulation
  hal::SimDouble m_gyroSim;
  frc::sim::EncoderSim m_leftEncoderSim{m_leftEncoder};
  frc::sim::EncoderSim m_rightEncoderSim{m_rightEncoder};
  frc::sim::DifferentialDrivetrainSim m_drivetrainSimulator;
};
