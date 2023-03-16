within CDC2023.Vehicles.Powertrains;
model MinimalFourWheels
    extends .VehicleDynamics.Vehicles.Powertrains.Experiments.Templates.MinimalFourWheels(redeclare replaceable .CDC2023.Vehicles.Powertrains.InWheelDrive powertrain);
    .Modelica.Blocks.Sources.Trapezoid torqueSource[4](each rising = 0.5,each falling = 0.5,each width = 5,each startTime = 2,each offset = 0,each nperiod = 2,each amplitude = 100) annotation(Placement(transformation(extent = {{40.0,-132.0},{60.0,-112.0}},origin = {0.0,0.0},rotation = 0.0)));
    .CDC2023.Vehicles.Powertrains.Components.i_sns i_sns_ annotation(Placement(transformation(extent = {{96.0,6.0},{88.0,14.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(torqueSource.y,signalBus.VDL_trm_mtr_trq_cmd) annotation(Line(points = {{61,-122},{75.5,-122},{75.5,-90},{90,-90}},color = {0,0,127}));
    connect(i_sns_.systemBus,powertrain.controlBus) annotation(Line(points = {{88,10},{44,10},{44,-20}},color = {240,170,40},pattern = LinePattern.Dot));
end MinimalFourWheels;
