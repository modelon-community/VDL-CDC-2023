within CDC2023.Vehicles;
model SedanInWheelMotors
    extends .VehicleDynamics.Vehicles.Templates.Car(final icon_name = "modelica://VehicleDynamics/Resources/Images/Vehicles/SedanLKIcon.png",redeclare replaceable .CDC2023.Vehicles.Chassis.Kinematic chassis,redeclare replaceable .CDC2023.Vehicles.Powertrains.InWheelDrive powertrain,redeclare replaceable .VehicleDynamics.Vehicles.Brakes.None brakes,redeclare replaceable .VehicleDynamics.Vehicles.Dashboards.Minimal dashboard,h_start = 0.312);
    .CDC2023.Vehicles.Interfaces.VehicleOutputs vehicleOutputs annotation(Placement(transformation(extent = {{190,50},{210,70}},origin = {0,0},rotation = 0)));
    .CDC2023.Vehicles.Sensors.SensorPackage sensorPackage annotation(Placement(transformation(extent = {{70.20021645292883,22.20021645292883},{109.79978354707117,61.79978354707117}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(sensorPackage.vehicleOutputs,vehicleOutputs) annotation(Line(points = {{109.79978354707117,42},{154.8998917735356,42},{154.8998917735356,60},{200,60}},color = {0,0,0}));
    connect(sensorPackage.frame_a,chassis.vehicleFrame) annotation(Line(points = {{70.20021645292883,42},{-15,42},{-15,-20}},color = {95,95,95}));
    connect(sensorPackage.signalBus,signalBus) annotation(Line(points = {{70.20021645292883,53.8798701282427},{-80,53.8798701282427},{-80,20},{-200,20},{-200,-60}},color = {255,204,51}));
    connect(sensorPackage.controlBus,powertrain.controlBus) annotation(Line(points = {{70.20021645292883,30.120129871757296},{64.20021645292883,30.120129871757296},{64.20021645292883,-14},{120,-14},{120,-20}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(sensorPackage.hub_1,chassis.hub_1) annotation(Line(points = {{76.14015151705019,22.200216452928828},{76.14015151705019,-76},{-30,-76},{-30,-70}},color = {95,95,95}));
    connect(sensorPackage.hub_2,chassis.hub_2) annotation(Line(points = {{84.06006493587864,22.200216452928828},{84.06006493587864,1.100108226464414},{-30,1.100108226464414},{-30,-20}},color = {95,95,95}));
    connect(sensorPackage.hub_3,chassis.hub_3) annotation(Line(points = {{95.93993506412136,22.200216452928828},{95.93993506412136,-76},{30,-76},{30,-70}},color = {95,95,95}));
    connect(sensorPackage.hub_4,chassis.hub_4) annotation(Line(points = {{103.85984848294981,22.200216452928828},{103.85984848294981,1.100108226464414},{30,1.100108226464414},{30,-20}},color = {95,95,95}));
end SedanInWheelMotors;
