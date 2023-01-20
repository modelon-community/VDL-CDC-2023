within CDC2023.Vehicles.Chassis.Suspensions.Front.Experiments;
model TestSuspension
    extends .VehicleDynamics.Vehicles.Chassis.Suspensions.Experiments.Templates.ExternalRigControl.SteerableSuspensionInWheelRig(redeclare replaceable .CDC2023.Vehicles.Chassis.Suspensions.Front.Kinematic suspension(leftLinkage(r0CL2 = {-0.31,0.37,-0.05}),visualize_joint_forces = true));
end TestSuspension;
