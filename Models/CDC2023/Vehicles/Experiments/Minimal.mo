within CDC2023.Vehicles.Experiments;
model Minimal
    extends .VehicleDynamics.Vehicles.Experiments.Templates.Minimal(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,redeclare replaceable .CDC2023.Vehicles.SedanInWheelMotors vehicle(v_start = 0));
    replaceable .Modelica.Blocks.Sources.Trapezoid torqueSource[4](amplitude = 100,rising = 0.5,width = 5,falling = 0.5,period = 8,nperiod = -1,offset = 0,startTime = 5) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-107.0,-45.0},{-87.0,-25.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-85.0,-35.0},{-65.0,-15.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Constant steerSource(k = 0) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-124.0,1.3333333333333357},{-104.0,21.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .VehicleDynamics.Vehicles.Chassis.Experiments.Robots.SteerServo steerRobot "Robot for steering" annotation(Placement(transformation(extent = {{-64.0,1.3333333333333357},{-44.0,21.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Sources.BooleanConstant release(k = false) annotation(Placement(transformation(extent = {{-94.0,21.333333333333336},{-74.0,41.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
  Sensors.DriverCommands driverCommands
    annotation (Placement(transformation(extent={{38,-12},{58,8}})));
equation
    connect(torqueSource.y,signalBus.VDL_trm_mtr_trq_cmd) annotation(Line(points = {{-86,-35},{-75,-35},{-75,-25}},color = {0,0,127}));
    connect(vehicle.signalBus,signalBus) annotation(Line(points = {{-60,-70},{-75,-70},{-75,-25}},color = {255,204,51}));
    connect(steerSource.y,steerRobot.phi_ref) annotation(Line(points = {{-103,11.333333333333336},{-65,11.333333333333336}},color = {0,0,127}));
    connect(release.y,steerRobot.release) annotation(Line(points = {{-73,31.333333333333336},{-54,31.333333333333336},{-54,22.333333333333336}},color = {255,0,255}));
    connect(vehicle.steeringWheelFlange,steerRobot.steeringWheelFlange) annotation(Line(points = {{-35,-30},{-35,11.333333333333336},{-44,11.333333333333336}},color = {95,95,95}));
  connect(driverCommands.frame_a, vehicle.vehicleFrame) annotation (Line(
      points={{48,-12},{48,-14},{-58,-14},{-58,-26},{-62,-26},{-62,-38},{-68,
          -38},{-68,-55},{-60,-55}},
      color={95,95,95},
      thickness=0.5));
  connect(driverCommands.signalBus, signalBus) annotation (Line(
      points={{38,-2},{-40,-2},{-40,-12},{-60,-12},{-60,-25},{-75,-25}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%second",
      index=1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
end Minimal;
