within CDC2023.Vehicles.Experiments;

model SimplePathFollowing
    extends .VehicleDynamics.Vehicles.Experiments.Templates.Minimal(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.OpenCRG ground(file_name = Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/crg-txt/flat_250.crg"),override_velocity = false,override_offset = false,path_file = Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/crg-pth/doubleLaneChange.mat")),redeclare replaceable .CDC2023.Vehicles.SedanInWheelMotors vehicle(v_start = 0,r_y_start = -4));
    replaceable .Modelica.Blocks.Sources.Trapezoid torqueSource[4](amplitude = 50,rising = 0.5,width = 5,falling = 0.5,period = 8,nperiod = 1,offset = 0,startTime = 5) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-107.0,-45.0},{-87.0,-25.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-85.0,-35.0},{-65.0,-15.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Constant steerSource(k = 0) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-124.0,1.3333333333333357},{-104.0,21.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .VehicleDynamics.Vehicles.Chassis.Experiments.Robots.SteerServo steerRobot "Robot for steering" annotation(Placement(transformation(extent = {{-64.0,1.3333333333333357},{-44.0,21.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Sources.BooleanConstant release(k = false) annotation(Placement(transformation(extent = {{-94.0,21.333333333333336},{-74.0,41.333333333333336}},rotation = 0.0,origin = {0.0,0.0})));
    .VehicleDynamics.Drivers.Perception.Ideal perception annotation(Placement(transformation(extent = {{-25.0,16.0},{-5.0,36.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Drivers.Planning.FromGround planning annotation(Placement(transformation(extent = {{9.0,16.0},{29.0,36.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Constant previewTime(k = 0) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{-20.0,58.0},{0.0,78.0}},rotation = 0.0,origin = {0.0,0.0})));
    replaceable .Modelica.Blocks.Sources.Constant previewDistance(k = 10) constrainedby .Modelica.Blocks.Interfaces.SO annotation(choicesAllMatching,Placement(transformation(extent = {{6.0,84.0},{26.0,104.0}},rotation = 0.0,origin = {0.0,0.0})));
    .VehicleDynamics.Drivers.Tracking.Blocks.SinglePointLateralTracker lateralTracker annotation(Placement(transformation(extent = {{44.0,12.0},{64.0,32.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(torqueSource.y,signalBus.VDL_trm_mtr_trq_cmd) annotation(Line(points = {{-86,-35},{-75,-35},{-75,-25}},color = {0,0,127}));
    connect(vehicle.signalBus,signalBus) annotation(Line(points = {{-60,-70},{-75,-70},{-75,-25}},color = {255,204,51}));
    connect(release.y,steerRobot.release) annotation(Line(points = {{-73,31.333333333333336},{-54,31.333333333333336},{-54,22.333333333333336}},color = {255,0,255}));
    connect(vehicle.steeringWheelFlange,steerRobot.steeringWheelFlange) annotation(Line(points = {{-35,-30},{-35,11.333333333333336},{-44,11.333333333333336}},color = {95,95,95}));
    connect(perception.perceptionFrame,vehicle.vehicleFrame) annotation(Line(points = {{-15,16},{-15,10},{-66,10},{-66,-55},{-60,-55}},color = {95,95,95}));
    connect(perception.dashboardInformation,signalBus.dashboard) annotation(Line(points = {{-15,36},{-15,42},{-75,42},{-75,-25}},color = {0,0,0}));
    connect(perception.percepts,planning.percepts) annotation(Line(points = {{-3,26},{7,26}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(previewTime.y,planning.previewTime[1]) annotation(Line(points = {{1,68},{15,68},{15,37}},color = {0,0,127}));
    connect(previewDistance.y,planning.previewDistance[1]) annotation(Line(points = {{27,94},{23,94},{23,37}},color = {0,0,127}));
    connect(planning.pathPoint,lateralTracker.pathPoint) annotation(Line(points = {{31,26},{42,26}},color = {255,0,0}));
    connect(lateralTracker.percepts,perception.percepts) annotation(Line(points = {{42,18},{34,18},{34,10},{2,10},{2,26},{-3,26}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(lateralTracker.str_cmd,steerRobot.phi_ref) annotation(Line(points = {{65,22},{71,22},{71,-6},{-70,-6},{-70,11.333333333333336},{-65,11.333333333333336}},color = {0,0,127}));
end SimplePathFollowing;
