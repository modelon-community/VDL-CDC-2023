within CDC2023.Vehicles.Exports.Tests;

model Acceleration
    extends Modelon.Icons.Experiment;
    .CDC2023.Vehicles.Exports.Acceleration doubleLaneChange(driverCommands(longitudinalTracker(K_acc = 1)),world(enableAnimation = true)) annotation(Placement(transformation(extent = {{-8,-8},{12,12}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.Add add(k1 = 75,k2 = -75) annotation(Placement(transformation(extent = {{-86,-16},{-66,4}},origin = {0,0},rotation = 0)));
equation
    connect(doubleLaneChange.driverOutputs.str_cmd,doubleLaneChange.phi_str) annotation(Line(points = {{13,6},{64,6},{64,-66},{-54,-66},{-54,9},{-10,9}},color = {0,0,127}));
    connect(add.y,doubleLaneChange.tau_FL) annotation(Line(points = {{-65,-6},{-37.5,-6},{-37.5,5.6000000000000005},{-10,5.6000000000000005}},color = {0,0,127}));
    connect(add.y,doubleLaneChange.tau_FR) annotation(Line(points = {{-65,-6},{-37.5,-6},{-37.5,2},{-10,2}},color = {0,0,127}));
    connect(add.y,doubleLaneChange.tau_RL) annotation(Line(points = {{-65,-6},{-37.5,-6},{-37.5,-1.6000000000000005},{-10,-1.6000000000000005}},color = {0,0,127}));
    connect(add.y,doubleLaneChange.tau_RR) annotation(Line(points = {{-65,-6},{-37.5,-6},{-37.5,-5},{-10,-5}},color = {0,0,127}));
    connect(doubleLaneChange.driverOutputs.brk_cmd,add.u2) annotation(Line(points = {{13,6},{19,6},{19,18},{-92,18},{-92,-12},{-88,-12}},color = {0,0,127}));
    connect(doubleLaneChange.driverOutputs.acc_cmd,add.u1) annotation(Line(points = {{13,6},{19,6},{19,18},{-92,18},{-92,0},{-88,0}},color = {0,0,127}));
end Acceleration;
