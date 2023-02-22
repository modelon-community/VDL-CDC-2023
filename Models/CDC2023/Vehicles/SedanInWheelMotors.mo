within CDC2023.Vehicles;
model SedanInWheelMotors
    extends .VehicleDynamics.Vehicles.Templates.Car(final icon_name = "modelica://VehicleDynamics/Resources/Images/Vehicles/SedanLKIcon.png",redeclare replaceable .CDC2023.Vehicles.Chassis.Kinematic chassis,redeclare replaceable .CDC2023.Vehicles.Powertrains.InWheelDrive powertrain,redeclare replaceable .VehicleDynamics.Vehicles.Brakes.None brakes,redeclare replaceable .VehicleDynamics.Vehicles.Dashboards.Minimal dashboard,h_start = 0.312);
    .Electrification.Control.Interfaces.SystemBus controlBus annotation(Placement(transformation(extent = {{26.490898710197868,86.49089871019785},{53.50910128980213,113.50910128980215}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(powertrain.controlBus,controlBus) annotation(Line(points = {{120,-20},{120,74},{40,74},{40,100}},color = {240,170,40},pattern = LinePattern.Dot));
end SedanInWheelMotors;
