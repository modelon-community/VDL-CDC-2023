within CDC2023.Vehicles.Chassis.Experiments;
model QuasiStatic
    extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.QuasiStaticExternal(redeclare replaceable .CDC2023.Vehicles.Chassis.Kinematic chassis,robot(front_drive_proportion = 0.5));
    annotation(experiment(StartTime = 0,StopTime = 1,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end QuasiStatic;
