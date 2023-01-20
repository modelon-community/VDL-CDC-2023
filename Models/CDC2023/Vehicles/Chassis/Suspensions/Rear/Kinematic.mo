within CDC2023.Vehicles.Chassis.Suspensions.Rear;

model Kinematic "Kinematic DoubleWishbone"
  extends .VehicleDynamics.Vehicles.Chassis.Suspensions.Rear.DoubleWishbone(
    toe=0.005235987755983,
    camber=-0.026179938779915,
    leftLinkage(
      r0H={-2.7,0.75,0},
      r0CL1={-2.407,0.329,-0.13},
      r0CL2={-2.7,0.329,-0.13},
      r0CL3={-2.6,0.35,0.115},
      r0CL4={-2.8,0.35,0.115},
      r0CS={-2.7,0.541,0.325},
      r0L1L2S={-2.7,0.63,-0.11},
      r0L1L2U={-2.7,0.7,-0.13},
      r0L3L4U={-2.7,0.68,0.15},
      r0CL5={-2.55,0.33,-0.026},
      r0L5U={-2.55,0.663,0},
      stabilizerMount(attachment_frame=3),
      steerAndUpperJoints(
        upperArm(mass_calculation_method=1),
        steerLink(mass_calculation_method=1)),
      upright(
        redeclare .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Components.Compliance hubMount(
          enable_compliance=false,
          k=[6.668e-07,9.246e-08,0,4.55e-07,4.704e-07,-5.625e-07;
             9.243e-08,7.303e-08,0,1.409e-07,-3.744e-07,-5.115e-07;
             -4.158e-12,-5.913e-12,0,6.325e-10,1.104e-11,5.39e-10;
             4.54e-07,1.406e-07,0,3.381e-06,-2.527e-06,-9.846e-07;
             4.71e-07,-3.749e-07,0,-2.533e-06,3.102e-05,4.825e-06;
             -5.614e-07,-5.102e-07,0,-9.843e-07,4.802e-06,3.744e-06]))),
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
      r0CL5=leftLinkage.r0CL5 .* {1,-1,1},
      stabilizerMount(attachment_frame=3),
      steerAndUpperJoints(
        upperArm(mass_calculation_method=1),
        steerLink(mass_calculation_method=1)),
      upright(
        redeclare .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Components.Compliance hubMount(
          enable_compliance=false,
          k=[6.664e-07,-9.302e-08,0,-4.559e-07,4.711e-07,5.617e-07;
             -9.238e-08,7.347e-08,0,1.412e-07,3.748e-07,-5.108e-07;
             -3.411e-13,7.376e-12,0,8.784e-11,7.381e-11,1.059e-10;
             -4.537e-07,1.415e-07,0,3.389e-06,2.53e-06,-9.831e-07;
              4.708e-07,3.771e-07,0,2.538e-06,3.105e-05,-4.818e-06;
              5.611e-07,-5.132e-07,0,-9.862e-07,-4.807e-06,3.74e-06]))),
    stabilizer(
      r0LX_1={-2.7,0.52,-0.1},
      r0AL_1={-2.705,0.52,0.025},
      r0AC_1={-2.941,0.345,0.035},
      r0LX_2={-2.7,-0.52,-0.1},
      r0AL_2={-2.705,-0.52,0.025},
      r0AC_2={-2.941,-0.345,0.035}),
    leftSpring(
      s0=0,
      f0=4185,
      c=64000,
      c1=300000,
      s1=-0.08,
      c2=60000,
      s2=0.1,
      length1=0.01,
      length2=0.01),
    rightSpring(
      s0=0,
      f0=4185,
      c=64000,
      c1=300000,
      s1=-0.08,
      c2=60000,
      s2=0.1,
      length1=0.01,
      length2=0.01),
    leftDamper(d=5000),
    rightDamper(d=5000),
    stabilizerCompliance(c=500));
end Kinematic;
