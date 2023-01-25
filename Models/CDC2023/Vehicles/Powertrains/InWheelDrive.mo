within CDC2023.Vehicles.Powertrains;

model InWheelDrive
  extends .VehicleDynamics.Vehicles.Powertrains.Templates.Electric.Detailed.InWheelDrive(
    icon_name="modelica://VehicleDynamics/Resources/Images/Vehicles/Powertrains/ElectricInWheelDriveIcon.png",
    minimumGear=min(gear_map[:, 2]),
    maximumGear=max(gear_map[:, 2]),
    gear_map=[-2,0,Integer(.VehicleDynamics.Vehicles.Powertrains.Transmissions.Types.GearSelectionMode.PARK);
              -1,-1,Integer(.VehicleDynamics.Vehicles.Powertrains.Transmissions.Types.GearSelectionMode.REVERSE);
              0,0,Integer(.VehicleDynamics.Vehicles.Powertrains.Transmissions.Types.GearSelectionMode.NEUTRAL);
              1,1,Integer(.VehicleDynamics.Vehicles.Powertrains.Transmissions.Types.GearSelectionMode.DRIVE)],
    redeclare replaceable .Electrification.Batteries.Examples.MultiBody3D batteryPack(
      np=1,
      multibody3D(
        enable_mass_properties=false,
        m_pack=300,
        rcm=(r0H_1 + r0H_2 + r0H_3 + r0H_4)/4,
        r_shape=(r0H_1 + r0H_2 + r0H_3 + r0H_4)/4 + {-0.75,0,0},
        length=1.2,
        width=1.0,
        height=0.1)),
    redeclare replaceable .Electrification.Machines.Examples.Machine3D motor1(
      redeclare replaceable .Electrification.Machines.Core.Examples.Ideal core(
        controller_limits=true,
        limits(
          I_dc_max_mot=1e6,
          P_max_mot=35000,
          tau_max_mot=75)),
      redeclare .Electrification.Machines.Control.LimitedTorque controller(
        external_limits=true,
        listen=true,
        id_listen=batteryPack.id,
        typeListen=.Electrification.Utilities.Types.ControllerType.Battery,
        torqueControl(external_torque=true),
        k_pMax=1/4),
      multibody3D(
        enable_mass_properties=false,
        r_shape=r0H_1 + {0,-0.02,0},
        lengthDirection={0,-1,0},
        length=0.18,
        width=0.2),
      redeclare .Electrification.Machines.Mechanical.Gearbox mechanical(
        J_rotor=0,
        ratio=10,
        d_viscous=0)),
    redeclare replaceable .Electrification.Machines.Examples.Machine3D motor2(
      redeclare replaceable .Electrification.Machines.Core.Examples.Ideal core(
        controller_limits=true,
        limits(
          I_dc_max_mot=1e6,
          P_max_mot=35000,
          tau_max_mot=75)),
        thermal(fixed_temperature=true),
      redeclare .Electrification.Machines.Control.LimitedTorque controller(
        external_limits=true,
        listen=true,
        id_listen=batteryPack.id,
        typeListen=.Electrification.Utilities.Types.ControllerType.Battery,
        torqueControl(external_torque=true),
        k_pMax=1/4),
      multibody3D(
        enable_mass_properties=false,
        r_shape=r0H_2 + {0,0.02,0},
        lengthDirection={0,1,0},
        length=0.18,
        width=0.2),
      redeclare .Electrification.Machines.Mechanical.Gearbox mechanical(
        J_rotor=0,
        ratio=10,
        d_viscous=0)),
    redeclare replaceable .Electrification.Machines.Examples.Machine3D motor3(
      redeclare replaceable .Electrification.Machines.Core.Examples.Ideal core(
        controller_limits=true,
        limits(
          I_dc_max_mot=1e6,
          P_max_mot=35000,
          tau_max_mot=75)),
        thermal(fixed_temperature=true),
      redeclare .Electrification.Machines.Control.LimitedTorque controller(
        external_limits=true,
        listen=true,
        id_listen=batteryPack.id,
        typeListen=.Electrification.Utilities.Types.ControllerType.Battery,
        torqueControl(external_torque=true),
        k_pMax=1/4),
      multibody3D(
        enable_mass_properties=false,
        r_shape=r0H_3 + {0,-0.02,0},
        lengthDirection={0,-1,0},
        length=0.18,
        width=0.2),
      redeclare .Electrification.Machines.Mechanical.Gearbox mechanical(
        J_rotor=0,
        ratio=10,
        d_viscous=0)),
    redeclare replaceable .Electrification.Machines.Examples.Machine3D motor4(
      redeclare replaceable .Electrification.Machines.Core.Examples.Ideal core(
        controller_limits=true,
        limits(
          I_dc_max_mot=1e6,
          P_max_mot=35000,
          tau_max_mot=75)),
        thermal(fixed_temperature=true),
      redeclare .Electrification.Machines.Control.LimitedTorque controller(
        external_limits=true,
        listen=true,
        id_listen=batteryPack.id,
        typeListen=.Electrification.Utilities.Types.ControllerType.Battery,
        torqueControl(external_torque=true),
        k_pMax=1/4),
      multibody3D(
        enable_mass_properties=false,
        r_shape=r0H_4 + {0,0.02,0},
        lengthDirection={0,1,0},
        length=0.18,
        width=0.2),
      redeclare .Electrification.Machines.Mechanical.Gearbox mechanical(
        J_rotor=0,
        ratio=10,
        d_viscous=0)),redeclare replaceable .CDC2023.Vehicles.Powertrains.MotorControlFromBus controller,enable_accelerator = false,enable_shift = false);

  .Modelica.Units.SI.Torque summary_tau_1=-hub_1.flange.tau
    "Powertrain torque on left front";
  .Modelica.Units.SI.Torque summary_tau_2=-hub_2.flange.tau
    "Powertrain torque on right front";
  .Modelica.Units.SI.Torque summary_tau_3=-hub_3.flange.tau
    "Powertrain torque on left rear";
  .Modelica.Units.SI.Torque summary_tau_4=-hub_4.flange.tau
    "Powertrain torque on right rear";
            .Electrification.Control.Interfaces.SystemBus controlBus annotation(Placement(transformation(extent = {{-26.411266944791766,43.58873305520823},{-13.588733055208234,56.41126694479177}},origin = {0.0,0.0},rotation = 0.0)));
        equation
    connect(controller.controlBus,controlBus) annotation(Line(points = {{22,30},{-20,30},{-20,50}},color = {240,170,40},pattern = LinePattern.Dot));
end InWheelDrive;
