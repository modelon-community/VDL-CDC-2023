within CDC2023.Vehicles;
model SedanInWheelMotors
    extends .VehicleDynamics.Vehicles.Templates.Car(final icon_name = "modelica://VehicleDynamics/Resources/Images/Vehicles/SedanLKIcon.png",redeclare replaceable .CDC2023.Vehicles.Chassis.Kinematic chassis,redeclare replaceable .CDC2023.Vehicles.Powertrains.InWheelDrive powertrain,redeclare replaceable .VehicleDynamics.Vehicles.Brakes.None brakes,redeclare replaceable .VehicleDynamics.Vehicles.Dashboards.Minimal dashboard,h_start = 0.312);
end SedanInWheelMotors;
