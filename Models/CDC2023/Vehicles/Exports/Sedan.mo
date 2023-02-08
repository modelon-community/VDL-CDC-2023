within CDC2023.Vehicles.Exports;

model Sedan
    extends .VehicleDynamics.Vehicles.Experiments.Templates.Minimal(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,redeclare replaceable .CDC2023.Vehicles.SedanInWheelMotors vehicle(v_start = 16.66666666666666666667));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-90.0,-30.0},{-70.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Experiments.Robots.SteerServo steerRobot "Robot for steering" annotation(Placement(transformation(extent = {{-60.0,10.0},{-40.0,30.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Sources.BooleanConstant release(k = false) annotation(Placement(transformation(extent = {{-80.0,80.0},{-60.0,100.0}},rotation = 0.0,origin = {0.0,0.0})));
  .CDC2023.Vehicles.Sensors.DriverCommands driverCommands
    annotation (Placement(transformation(extent={{38,-12},{58,8}})));
    .Modelica.Blocks.Interfaces.RealInput phi_str annotation(Placement(transformation(extent = {{-140.0,50.0},{-100.0,90.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput tau_FL annotation(Placement(transformation(extent = {{-140.0,16.0},{-100.0,56.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput tau_FR annotation(Placement(transformation(extent = {{-140.0,-20.0},{-100.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput tau_RL annotation(Placement(transformation(extent = {{-140.0,-56.0},{-100.0,-16.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput tau_RR annotation(Placement(transformation(extent = {{-140.0,-90.0},{-100.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .CDC2023.Vehicles.Interfaces.VehicleOutputs vehicleOutputs annotation(Placement(transformation(extent = {{100,-30},{120,-10}},origin = {0,0},rotation = 0)));
    .CDC2023.Vehicles.Interfaces.DriverOutputs driverOutputs annotation(Placement(transformation(extent = {{100,30},{120,50}},origin = {0,0},rotation = 0)));
    replaceable .Modelica.Blocks.Sources.Constant desiredVelocity(k = vehicle.v_start) constrainedby .Modelica.Blocks.Interfaces.SO annotation(Placement(transformation(extent = {{0,20},{20,40}},origin = {0,0},rotation = 0)));
equation
    connect(vehicle.signalBus,signalBus) annotation(Line(points = {{-60,-70},{-80,-70},{-80,-20}},color = {255,204,51}));
    connect(release.y,steerRobot.release) annotation(Line(points = {{-59,90},{-50,90},{-50,31}},color = {255,0,255}));
    connect(vehicle.steeringWheelFlange,steerRobot.steeringWheelFlange) annotation(Line(points = {{-35,-30},{-35,20},{-40,20}},color = {95,95,95}));
  connect(driverCommands.frame_a, vehicle.vehicleFrame) annotation (Line(
      points={{48,-12},{-68,-12},{-68,-55},{-60,-55}},
      color={95,95,95},
      thickness=0.5));
    connect(steerRobot.phi_ref,phi_str) annotation(Line(points = {{-61,20},{-68,20},{-68,70},{-120,70}},color = {0,0,127}));
    connect(tau_FL,signalBus.VDL_trm_mtr_trq_cmd[1]) annotation(Line(points = {{-120,36},{-80,36},{-80,-20}},color = {0,0,127}));
    connect(tau_FR,signalBus.VDL_trm_mtr_trq_cmd[2]) annotation(Line(points = {{-120,0},{-80,0},{-80,-20}},color = {0,0,127}));
    connect(tau_RL,signalBus.VDL_trm_mtr_trq_cmd[3]) annotation(Line(points = {{-120,-36},{-80,-36},{-80,-20}},color = {0,0,127}));
    connect(tau_RR,signalBus.VDL_trm_mtr_trq_cmd[4]) annotation(Line(points = {{-120,-70},{-80,-70},{-80,-20}},color = {0,0,127}));
    connect(driverCommands.signalBus,vehicle.signalBus) annotation(Line(points = {{38,-2},{-70,-2},{-70,-70},{-60,-70}},color = {255,204,51}));
    connect(driverCommands.driverOutputs,driverOutputs) annotation(Line(points = {{59,-2},{70,-2},{70,40},{110,40}},color = {0,0,127}));
    connect(vehicle.vehicleOutputs,vehicleOutputs) annotation(Line(points = {{42.5,-40},{76.25,-40},{76.25,-20},{110,-20}},color = {0,0,127}));
    connect(desiredVelocity.y,driverCommands.desired_velocity) annotation(Line(points = {{21,30},{44,30},{44,9.200000000000001}},color = {0,0,127}));
end Sedan;
