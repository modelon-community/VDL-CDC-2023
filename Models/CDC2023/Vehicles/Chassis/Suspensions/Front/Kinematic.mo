within CDC2023.Vehicles.Chassis.Suspensions.Front;

model Kinematic "Kinematic DoubleWishbone"
  extends .VehicleDynamics.Vehicles.Chassis.Suspensions.Front.DoubleWishbone(
    toe=0.005235987755983,
    camber=-0.0087266462599716,
    leftLinkage(
      r0H={0,0.75,0},
      r0CL1={0,0.37,-0.1},
      r0CL2={-0.31,0.37,-0.0},
      r0CL3={0.105,0.42,0.35},
      r0CL4={-0.105,0.42,0.34},
      r0CS={0.025,0.55,0.45},
      r0L1L2S={0,0.65,-0.08},
      r0L1L2U={-0.014,0.7,-0.1},
      r0L3L4U={-0.044,0.65,0.37},
      r0L5U={-0.136,0.7,-0.02},
      stabilizerMount(attachment_frame=3),
      steerAndUpperJoints(
        upperArm(mass_calculation_method=1),
        steerLink(mass_calculation_method=1),
      upperInnerJoints(visualize_forces_J1 = visualize_joint_forces,visualize_forces_J2 = visualize_joint_forces)),
      upright(
        redeclare .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Components.Compliance hubMount(
          enable_compliance=false,
          k=[5.468e-07,-1.571e-07,0,-3.804e-07,-9.779e-07,-4.371e-07;
            -1.565e-07,1.189e-07,0,1.883e-07,2.454e-07,8.019e-07;
            -4.676e-13,3.782e-12,0,6.815e-13,5.079e-10,4.774e-11;
            3.914e-07,-1.943e-07,0,-9.626e-07,-3.882e-07,-1.159e-06;
            -9.772e-07,2.461e-07,0,3.771e-07,6.838e-06,4.658e-07;
            -4.36e-07,8.023e-07,0,1.124e-06,4.643e-07,6.559e-06])),
      lowerInnerJoints(visualize_forces_J1 = visualize_joint_forces,visualize_forces_J2 = visualize_joint_forces)),
    rightLinkage(
      r0H=leftLinkage.r0H .* {1,-1,1},
      r0CL1=leftLinkage.r0CL1 .* {1,-1,1},
      r0CL2=leftLinkage.r0CL2 .* {1,-1,1},
      r0CL3=leftLinkage.r0CL3 .* {1,-1,1},
      r0CL4=leftLinkage.r0CL4 .* {1,-1,1},
      r0CS=leftLinkage.r0CS .* {1,-1,1},
      r0L1L2S=leftLinkage.r0L1L2S .* {1,-1,1},
      r0L1L2U=leftLinkage.r0L1L2U .* {1,-1,1},
      r0L3L4U=leftLinkage.r0L3L4U .* {1,-1,1},
      r0L5U=leftLinkage.r0L5U .* {1,-1,1},
      stabilizerMount(attachment_frame=3),
      steerAndUpperJoints(
        upperArm(mass_calculation_method=1),
        steerLink(mass_calculation_method=1),
      upperInnerJoints(visualize_forces_J1 = visualize_joint_forces,visualize_forces_J2 = visualize_joint_forces)),
      upright(
        redeclare .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Components.Compliance hubMount(
          enable_compliance=false,
          k=[5.468e-07,1.563e-07,0,3.806e-07,-9.779e-07,4.365e-07;
            1.565e-07,1.183e-07,0,1.884e-07,-2.454e-07,8.009e-07;
            -4.658e-13,-4.074e-12,0,-6.294e-13,5.076e-10,-1.446e-10;
            3.914e-07,1.933e-07,0,9.629e-07,-3.882e-07,1.158e-06;
            -9.772e-07,-2.449e-07,0,-3.773e-07,6.838e-06,-4.65e-07;
            4.36e-07,7.982e-07,0,1.125e-06,-4.643e-07,6.552e-06])),
      lowerInnerJoints(visualize_forces_J1 = visualize_joint_forces,visualize_forces_J2 = visualize_joint_forces)),
    steering(
      r0R_1={-0.191,0.395,-0.05},
      r0R_2=steering.r0R_1 .* {1,-1,1},
      iPR=-0.007,
      r0Q={-0.83,0.43,0.67}),
    stabilizer(
      r0LX_1={-0.056,0.544,-0.1},
      r0AL_1={-0.044,0.551,0.025},
      r0AC_1={-0.241,0.345,0.035},
      r0LX_2={-0.056,-0.544,-0.1},
      r0AL_2={-0.044,-0.551,0.025},
      r0AC_2={-0.241,-0.345,0.035}),
    leftSpring(
      s0=0,
      f0=4460,
      c=28300,
      c1=300000,
      s1=-0.08,
      c2=60000,
      s2=0.1,
      length1=0.01,
      length2=0.01),
    rightSpring(
      s0=0,
      f0=4460,
      c=28300,
      c1=300000,
      s1=-0.08,
      c2=60000,
      s2=0.1,
      length1=0.01,
      length2=0.01),
    leftDamper(d=3500),
    rightDamper(d=3500),
    stabilizerCompliance(c=3600));
    parameter Boolean visualize_joint_forces = false "True to visualize forces in joints" annotation(Dialog(tab = "Visualization"));
end Kinematic;
