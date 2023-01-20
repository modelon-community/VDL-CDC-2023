within CDC2023.Vehicles.Chassis.Suspensions.Rear.Experiments;
model TestSuspension
    extends .VehicleDynamics.Vehicles.Chassis.Suspensions.Experiments.Templates.ExternalRigControl.SuspensionInWheelRig(redeclare replaceable .CDC2023.Vehicles.Chassis.Suspensions.Rear.Kinematic suspension);
end TestSuspension;
