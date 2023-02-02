within CDC2023.Vehicles.Experiments;

model MaxAcceleration
    extends .VehicleDynamics.Vehicles.Experiments.Templates.Minimal(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,redeclare replaceable .CDC2023.Vehicles.SedanInWheelMotors vehicle(v_start = 0));
    replaceable .Modelica.Blocks.Sources.Ramp torqueSource[4](height = {75,75,75,75},duration = {0.1,0.1,0.1,0.1},startTime = {5,5,5,5}) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-107.0,-45.0},{-87.0,-25.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-85.0,-35.0},{-65.0,-15.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Constant steerSource(k = 0) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-124.0,1.3333333333333357},{-104.0,21.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .VehicleDynamics.Vehicles.Chassis.Experiments.Robots.SteerServo steerRobot "Robot for steering" annotation(Placement(transformation(extent = {{-64.0,1.3333333333333357},{-44.0,21.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Sources.BooleanConstant release(k = false) annotation(Placement(transformation(extent = {{-94.0,21.333333333333336},{-74.0,41.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .VehicleDynamics.Drivers.Perception.Ideal perception annotation(Placement(transformation(extent = {{-25.0,16.0},{-5.0,36.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Drivers.Planning.FromGround planning annotation(Placement(transformation(extent = {{9.0,16.0},{29.0,36.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Constant previewTime(k = 0) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-20.0,58.0},{0.0,78.0}},rotation = 0.0,origin = {0.0,0.0})));
    replaceable .Modelica.Blocks.Sources.Constant previewDistance(k = 0) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{6.0,84.0},{26.0,104.0}},rotation = 0.0,origin = {0.0,0.0})));
equation
    connect(torqueSource.y,signalBus.VDL_trm_mtr_trq_cmd) annotation(Line(points = {{-86,-35},{-75,-35},{-75,-25}},color = {0,0,127}));
    connect(vehicle.signalBus,signalBus) annotation(Line(points = {{-60,-70},{-75,-70},{-75,-25}},color = {255,204,51}));
    connect(steerSource.y,steerRobot.phi_ref) annotation(Line(points = {{-103,11.333333333333336},{-65,11.333333333333336}},color = {0,0,127}));
    connect(release.y,steerRobot.release) annotation(Line(points = {{-73,31.333333333333336},{-54,31.333333333333336},{-54,22.333333333333336}},color = {255,0,255}));
    connect(vehicle.steeringWheelFlange,steerRobot.steeringWheelFlange) annotation(Line(points = {{-35,-30},{-35,11.333333333333336},{-44,11.333333333333336}},color = {95,95,95}));
    connect(perception.perceptionFrame,vehicle.vehicleFrame) annotation(Line(points = {{-15,16},{-15,10},{-66,10},{-66,-55},{-60,-55}},color = {95,95,95}));
    connect(perception.dashboardInformation,signalBus.dashboard) annotation(Line(points = {{-15,36},{-15,42},{-75,42},{-75,-25}},color = {0,0,0}));
    connect(perception.percepts,planning.percepts) annotation(Line(points = {{-3,26},{7,26}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(previewTime.y,planning.previewTime[1]) annotation(Line(points = {{1,68},{15,68},{15,37}},color = {0,0,127}));
    connect(previewDistance.y,planning.previewDistance[1]) annotation(Line(points = {{27,94},{23,94},{23,37}},color = {0,0,127}));
end MaxAcceleration;
