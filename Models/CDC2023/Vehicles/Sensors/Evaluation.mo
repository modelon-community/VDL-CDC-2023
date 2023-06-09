within CDC2023.Vehicles.Sensors;
model Evaluation "Sensor to calculate outputs for external controllers"
    extends Modelon.Icons.Optimization;
    .CDC2023.Vehicles.Interfaces.VehicleOutputs vehicleOutputs annotation(Placement(transformation(extent = {{-120,50},{-100,70}},origin = {0,0},rotation = 0)));
    .CDC2023.Vehicles.Interfaces.DriverOutputs driverOutputs annotation(Placement(transformation(extent = {{-120.0,-50.0},{-100.0,-30.0}},origin = {0.0,0.0},rotation = 0.0)));
    .CDC2023.Vehicles.Interfaces.EvaluationOutputs evaluationOutputs annotation(Placement(transformation(extent = {{100,-10},{120,10}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.Feedback velocityError annotation(Placement(transformation(extent = {{-30.0,-30.0},{-10.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Product product[4] annotation(Placement(transformation(extent = {{-40.0,30.0},{-20.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex4 currents annotation(Placement(transformation(extent = {{-80,50},{-60,70}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Routing.Replicator voltage(nout = 4) annotation(Placement(transformation(extent = {{-80,20},{-60,40}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.Sum sum(nin = 4) annotation(Placement(transformation(extent = {{-10.0,30.0},{10.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Continuous.Integrator integrator annotation(Placement(transformation(extent = {{60.0,30.0},{80.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Continuous.Integrator integrator2 annotation(Placement(transformation(extent = {{30.0,-30.0},{50.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Product square2 annotation(Placement(transformation(extent = {{0.0,-30.0},{20.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {0.0,-100.0},rotation = 90.0)));
    .VehicleDynamics.Grounds.Sensors.PathInfo pathInfo annotation(Placement(transformation(extent = {{-40.0,-70.0},{-20.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Continuous.Integrator integrator3 annotation(Placement(transformation(extent = {{30.0,-70.0},{50.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Product square3 annotation(Placement(transformation(extent = {{-6.0,-70.0},{14.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(velocityError.u1,driverOutputs.vV_P_x[1]) annotation(Line(points = {{-28,-20},{-69,-20},{-69,-40},{-110,-40}},color = {0,0,127}));
    connect(velocityError.u2,driverOutputs.v_veh_percepts) annotation(Line(points = {{-20,-28},{-20,-40},{-110,-40}},color = {0,0,127}));
    connect(currents.u1[1],vehicleOutputs.FL_wheel.i) annotation(Line(points = {{-82,69},{-82,75},{-110,75},{-110,60}},color = {0,0,127}));
    connect(currents.u2[1],vehicleOutputs.FR_wheel.i) annotation(Line(points = {{-82,63},{-96,63},{-96,60},{-110,60}},color = {0,0,127}));
    connect(currents.u3[1],vehicleOutputs.RL_wheel.i) annotation(Line(points = {{-82,57},{-96,57},{-96,60},{-110,60}},color = {0,0,127}));
    connect(currents.u4[1],vehicleOutputs.RR_wheel.i) annotation(Line(points = {{-82,51},{-82,45},{-110,45},{-110,60}},color = {0,0,127}));
    connect(currents.y,product.u1) annotation(Line(points = {{-59,60},{-50.5,60},{-50.5,46},{-42,46}},color = {0,0,127}));
    connect(voltage.u,vehicleOutputs.v_bat) annotation(Line(points = {{-82,30},{-96,30},{-96,60},{-110,60}},color = {0,0,127}));
    connect(voltage.y,product.u2) annotation(Line(points = {{-59,30},{-50.5,30},{-50.5,34},{-42,34}},color = {0,0,127}));
    connect(sum.u,product.y) annotation(Line(points = {{-12,40},{-19,40}},color = {0,0,127}));
    connect(integrator.y,evaluationOutputs.J_e) annotation(Line(points = {{81,40},{96,40},{96,0},{110,0}},color = {0,0,127}));
    connect(square2.u1,velocityError.y) annotation(Line(points = {{-2,-14},{-6.5,-14},{-6.5,-20},{-11,-20}},color = {0,0,127}));
    connect(square2.u2,velocityError.y) annotation(Line(points = {{-2,-26},{-6.5,-26},{-6.5,-20},{-11,-20}},color = {0,0,127}));
    connect(square2.y,integrator2.u) annotation(Line(points = {{21,-20},{28,-20}},color = {0,0,127}));
    connect(integrator2.y,evaluationOutputs.J_v_1) annotation(Line(points = {{51,-20},{96,-20},{96,0},{110,0}},color = {0,0,127}));
    connect(pathInfo.mountFrame,frame_a) annotation(Line(points = {{-40,-60},{-80,-60},{-80,-86},{0,-86},{0,-100}},color = {95,95,95}));
    connect(integrator3.y,evaluationOutputs.J_v_2) annotation(Line(points = {{51,-60},{96,-60},{96,0},{110,0}},color = {0,0,127}));
    connect(pathInfo.r_P[2],square3.u1) annotation(Line(points = {{-19,-60},{-13.5,-60},{-13.5,-54},{-8,-54}},color = {0,0,127}));
    connect(pathInfo.r_P[2],square3.u2) annotation(Line(points = {{-19,-60},{-13.5,-60},{-13.5,-66},{-8,-66}},color = {0,0,127}));
    connect(square3.y,integrator3.u) annotation(Line(points = {{15,-60},{28,-60}},color = {0,0,127}));
    connect(sum.y,integrator.u) annotation(Line(points = {{11,40},{58,40}},color = {0,0,127}));
    annotation(Documentation(info = "<html><p>This sensor calculates takes inputs from the VehicleOutputs and DriverOutputs connectors and calculates the following evaluation criteria:<br>
 J_v_1: Integral of deviation from target velocity<br>
 J_v_2: Integral of deviation from target path<br>
 J_e: Integral of total energy consumed by the electric motors </p></html>"));
end Evaluation;
