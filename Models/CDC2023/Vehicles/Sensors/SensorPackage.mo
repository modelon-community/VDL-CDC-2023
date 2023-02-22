within CDC2023.Vehicles.Sensors;
model SensorPackage
    extends Modelon.Icons.MultipleSensors;
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-116,-16},{-84,16}},origin = {0,0},rotation = 0)));
    
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_a hub_1 "To be connected to the wheel hub flange" annotation(Placement(transformation(extent = {{-80.0,-110.0},{-60.0,-90.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_a hub_2 "To be connected to the wheel hub flange" annotation(Placement(transformation(extent = {{-40.0,-110.0},{-20.0,-90.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_a hub_3 "To be connected to the wheel hub flange" annotation(Placement(transformation(extent = {{20.0,-110.0},{40.0,-90.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_a hub_4 "To be connected to the wheel hub flange" annotation(Placement(transformation(extent = {{60.0,-110.0},{80.0,-90.0}},rotation = 0.0,origin = {0.0,0.0})));
    
    .VehicleDynamics.Vehicles.Chassis.Sensors.HubAngles hubAngles_1 annotation(Placement(transformation(extent = {{-70.0,-80.0},{-50.0,-60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Sensors.HubAngles hubAngles_2 annotation(Placement(transformation(extent = {{-30.0,-80.0},{-10.0,-60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Sensors.HubAngles hubAngles_3 annotation(Placement(transformation(extent = {{30.0,-80.0},{10.0,-60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Sensors.HubAngles hubAngles_4 annotation(Placement(transformation(extent = {{70.0,-80.0},{50.0,-60.0}},origin = {0.0,0.0},rotation = 0.0)));
    
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-119.76757610476429,40.23242389523571},{-80.23242389523571,79.76757610476429}},origin = {0.0,0.0},rotation = 0.0)));
    .CDC2023.Vehicles.Interfaces.VehicleOutputs vehicleOutputs annotation(Placement(transformation(extent = {{90.0,-10.0},{110.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Control.Interfaces.SystemBus controlBus annotation(Placement(transformation(extent = {{-120,-80},{-80,-40}},origin = {0,0},rotation = 0)));
    
    .Electrification.Machines.Control.Signals.tau_sns[4] tau_sns(id = {1,2,3,4}) annotation(Placement(transformation(extent = {{-46.0,-4.0},{-54.0,4.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.pwr_sns[4] pwr_sns(id = {1,2,3,4}) annotation(Placement(transformation(extent = {{-46.0,-14.0},{-54.0,-6.0}},origin = {0.0,0.0},rotation = 0.0)));
    .CDC2023.Vehicles.Powertrains.i_sns[4] i_sns annotation(Placement(transformation(extent = {{-46.0,-24.0},{-54.0,-16.0}},origin = {0.0,0.0},rotation = 0.0)));
    
    .VehicleDynamics.Vehicles.Chassis.Sensors.ChassisStates chassisStates annotation(Placement(transformation(extent = {{-20,30},{0,50}},origin = {0,0},rotation = 0)));
    .CDC2023.Vehicles.Powertrains.v_pack v_pack annotation(Placement(transformation(extent = {{-4.0,4.0},{-12.0,12.0}},origin = {0.0,0.0},rotation = 0.0)));
protected
    .CDC2023.Vehicles.Interfaces.WheelOutputs[4] wheelOutputs annotation(Placement(transformation(extent = {{60.0,-34.0},{80.0,-14.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(chassisStates.mount_frame,frame_a) annotation(Line(points = {{-20,40},{-60,40},{-60,0},{-100,0}},color = {95,95,95}));
    connect(chassisStates.velocity[3],vehicleOutputs.v_z) annotation(Line(points = {{1,44},{76,44},{76,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.velocity[1],vehicleOutputs.v_x) annotation(Line(points = {{1,44},{80,44},{80,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.velocity[2],vehicleOutputs.v_y) annotation(Line(points = {{1,44},{78,44},{78,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.acceleration[1],vehicleOutputs.a_x) annotation(Line(points = {{1,41},{56,41},{56,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.acceleration[2],vehicleOutputs.a_y) annotation(Line(points = {{1,41},{54,41},{54,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.acceleration[3],vehicleOutputs.a_z) annotation(Line(points = {{1,41},{52,41},{52,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.angles[1],vehicleOutputs.phi_p) annotation(Line(points = {{1,38},{44,38},{44,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.angles[2],vehicleOutputs.phi_q) annotation(Line(points = {{1,38},{42,38},{42,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.angles[3],vehicleOutputs.phi_r) annotation(Line(points = {{1,38},{40,38},{40,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.angular_velocity[1],vehicleOutputs.omg_p) annotation(Line(points = {{1,35},{30,35},{30,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.angular_velocity[2],vehicleOutputs.omg_q) annotation(Line(points = {{1,35},{28,35},{28,0},{100,0}},color = {0,0,127}));
    connect(chassisStates.angular_velocity[3],vehicleOutputs.omg_r) annotation(Line(points = {{1,35},{26,35},{26,0},{100,0}},color = {0,0,127}));
    connect(tau_sns[1].systemBus,controlBus) annotation(Line(points = {{-54,0},{-75,0},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(tau_sns[2].systemBus,controlBus) annotation(Line(points = {{-54,0},{-75,0},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(tau_sns[3].systemBus,controlBus) annotation(Line(points = {{-54,0},{-75,0},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(tau_sns[4].systemBus,controlBus) annotation(Line(points = {{-54,0},{-75,0},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(pwr_sns[1].systemBus,controlBus) annotation(Line(points = {{-54,-10},{-75,-10},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(pwr_sns[2].systemBus,controlBus) annotation(Line(points = {{-54,-10},{-75,-10},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(pwr_sns[3].systemBus,controlBus) annotation(Line(points = {{-54,-10},{-75,-10},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(pwr_sns[4].systemBus,controlBus) annotation(Line(points = {{-54,-10},{-75,-10},{-75,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(i_sns[1].systemBus,controlBus) annotation(Line(points = {{-54,-20},{-54,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(i_sns[2].systemBus,controlBus) annotation(Line(points = {{-54,-20},{-54,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(i_sns[3].systemBus,controlBus) annotation(Line(points = {{-54,-20},{-54,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(i_sns[4].systemBus,controlBus) annotation(Line(points = {{-54,-20},{-54,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(tau_sns[1].y_r,wheelOutputs[1].tau) annotation(Line(points = {{-45,0},{-19.5,0},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(tau_sns[2].y_r,wheelOutputs[2].tau) annotation(Line(points = {{-45,0},{-19.5,0},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(tau_sns[3].y_r,wheelOutputs[3].tau) annotation(Line(points = {{-45,0},{-19.5,0},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(tau_sns[4].y_r,wheelOutputs[4].tau) annotation(Line(points = {{-45,0},{-19.5,0},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(pwr_sns[1].y_r,wheelOutputs[1].pow) annotation(Line(points = {{-45,-10},{-19.5,-10},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(pwr_sns[2].y_r,wheelOutputs[2].pow) annotation(Line(points = {{-45,-10},{-19.5,-10},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(pwr_sns[3].y_r,wheelOutputs[3].pow) annotation(Line(points = {{-45,-10},{-19.5,-10},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(pwr_sns[4].y_r,wheelOutputs[4].pow) annotation(Line(points = {{-45,-10},{-19.5,-10},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(i_sns[1].y_r,wheelOutputs[1].i) annotation(Line(points = {{-45,-20},{-19.5,-20},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(i_sns[2].y_r,wheelOutputs[2].i) annotation(Line(points = {{-45,-20},{-19.5,-20},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(i_sns[3].y_r,wheelOutputs[3].i) annotation(Line(points = {{-45,-20},{-19.5,-20},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(i_sns[4].y_r,wheelOutputs[4].i) annotation(Line(points = {{-45,-20},{-19.5,-20},{-19.5,-24},{70,-24}},color = {0,0,127}));
    connect(wheelOutputs[1],vehicleOutputs.FL_wheel) annotation(Line(points = {{70,-24},{88,-24},{88,0},{100,0}},color = {0,0,0}));
    connect(wheelOutputs[2],vehicleOutputs.FR_wheel) annotation(Line(points = {{70,-24},{86,-24},{86,0},{100,0}},color = {0,0,0}));
    connect(wheelOutputs[3],vehicleOutputs.RL_wheel) annotation(Line(points = {{70,-24},{84,-24},{84,0},{100,0}},color = {0,0,0}));
    connect(wheelOutputs[4],vehicleOutputs.RR_wheel) annotation(Line(points = {{70,-24},{82,-24},{82,0},{100,0}},color = {0,0,0}));
    connect(vehicleOutputs.FL_wheel.f_x,signalBus.VDL_whl_frc_x[1]) annotation(Line(points = {{100,0},{88,0},{88,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.FR_wheel.f_x,signalBus.VDL_whl_frc_x[2]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.RL_wheel.f_x,signalBus.VDL_whl_frc_x[3]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.RR_wheel.f_x,signalBus.VDL_whl_frc_x[4]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.FL_wheel.f_y,signalBus.VDL_whl_frc_y[1]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.FR_wheel.f_y,signalBus.VDL_whl_frc_y[2]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.RL_wheel.f_y,signalBus.VDL_whl_frc_y[3]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.RR_wheel.f_y,signalBus.VDL_whl_frc_y[4]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.FL_wheel.f_z,signalBus.VDL_whl_frc_z[1]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.FR_wheel.f_z,signalBus.VDL_whl_frc_z[2]) annotation(Line(points = {{100,0},{88,0},{88,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.RL_wheel.f_z,signalBus.VDL_whl_frc_z[3]) annotation(Line(points = {{100,0},{88,0},{88,60},{-100,60}},color = {0,0,0}));
    connect(vehicleOutputs.RR_wheel.f_z,signalBus.VDL_whl_frc_z[4]) annotation(Line(points = {{100,0},{90,0},{90,60},{-100,60}},color = {0,0,0}));    
    connect(hubAngles_1.frame_resolve,frame_a) annotation(Line(points = {{-60,-80},{-60,-84},{-100,-84},{-100,0}},color = {95,95,95},pattern = LinePattern.Dot));
    connect(hubAngles_1.hubFlange,hub_1) annotation(Line(points = {{-70,-70},{-70,-100}},color = {95,95,95}));
    connect(hubAngles_2.frame_resolve,frame_a) annotation(Line(points = {{-20,-80},{-20,-84},{-100,-84},{-100,0}},color = {95,95,95},pattern = LinePattern.Dot));
    connect(hubAngles_3.frame_resolve,frame_a) annotation(Line(points = {{20,-80},{20,-86},{-100,-86},{-100,0}},color = {95,95,95},pattern = LinePattern.Dot));
    connect(hubAngles_4.frame_resolve,frame_a) annotation(Line(points = {{60,-80},{60,-86},{-100,-86},{-100,0}},color = {95,95,95},pattern = LinePattern.Dot));
    connect(hubAngles_2.hubFlange,hub_2) annotation(Line(points = {{-30,-70},{-30,-100}},color = {95,95,95}));
    connect(hubAngles_3.hubFlange,hub_3) annotation(Line(points = {{30,-70},{30,-100}},color = {95,95,95}));
    connect(hubAngles_4.hubFlange,hub_4) annotation(Line(points = {{70,-70},{70,-100}},color = {95,95,95}));
    connect(hubAngles_1.steer,wheelOutputs[1].phi_str) annotation(Line(points = {{-49,-74},{-40,-74},{-40,-24},{70,-24}},color = {0,0,127}));
    connect(hubAngles_2.steer,wheelOutputs[2].phi_str) annotation(Line(points = {{-9,-74},{-4,-74},{-4,-24},{70,-24}},color = {0,0,127}));
    connect(hubAngles_3.steer,wheelOutputs[3].phi_str) annotation(Line(points = {{9,-74},{4,-74},{4,-24},{70,-24}},color = {0,0,127}));
    connect(hubAngles_4.steer,wheelOutputs[4].phi_str) annotation(Line(points = {{49,-74},{38,-74},{38,-24},{70,-24}},color = {0,0,127}));
    connect(v_pack.systemBus,controlBus) annotation(Line(points = {{-12,8},{-74,8},{-74,-60},{-100,-60}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(v_pack.y_r,vehicleOutputs.v_bat) annotation(Line(points = {{-3,8},{20,8},{20,0},{100,0}},color = {0,0,127}));
    
    connect(wheelOutputs[1].sr,signalBus.VDL_whl_slp_x[1]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    connect(wheelOutputs[2].sr,signalBus.VDL_whl_slp_x[2]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    connect(wheelOutputs[3].sr,signalBus.VDL_whl_slp_x[3]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    connect(wheelOutputs[4].sr,signalBus.VDL_whl_slp_x[4]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    
    connect(wheelOutputs[1].omg,signalBus.VDL_whl_spd[1]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    connect(wheelOutputs[2].omg,signalBus.VDL_whl_spd[2]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    connect(wheelOutputs[3].omg,signalBus.VDL_whl_spd[3]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    connect(wheelOutputs[4].omg,signalBus.VDL_whl_spd[4]) annotation(Line(points = {{70,-24},{50,-24},{50,-38},{-74,-38},{-74,60},{-100,60}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end SensorPackage;
