within CDC2023.Vehicles.Sensors;
model DriverCommands
    .VehicleDynamics.Drivers.Tracking.Blocks.SinglePointLateralTracker lateralTracker annotation(Placement(transformation(extent = {{-12.0,28.0},{8.0,48.0}},origin={20,0},     rotation = 0.0)));
    .VehicleDynamics.Drivers.Tracking.Blocks.SinglePointLongitudinalTracker longitudinalTracker annotation(Placement(transformation(extent = {{-20.0,-40.0},{0.0,-20.0}},                   rotation = 0.0)));
    .VehicleDynamics.Drivers.Planning.DesiredVelocity planning(n_info = 1) annotation(Placement(transformation(extent = {{-54.0,0.0},{-34.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(transformation(extent = {{-60,-80},{-40,-60}},origin={4,0},  rotation = 0)));
    .CDC2023.Vehicles.Interfaces.DriverOutputs driverOutputs annotation(Placement(transformation(extent = {{100.0,-10.0},{120.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Drivers.Perception.Ideal perception annotation(Placement(transformation(extent = {{-92.0,0.0},{-72.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-100.0,0.0},rotation = -90.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {0.0,-100.0},rotation = 90.0)));
    .Modelica.Blocks.Interfaces.RealInput desired_velocity annotation(Placement(transformation(extent = {{-11.632925860839833,-11.632925860839833},{11.632925860839833,11.632925860839833}},origin = {-40.0,112.0},rotation = -90.0)));
    .Modelica.Blocks.Math.Gain gain(k = 1 / 500) annotation(Placement(transformation(extent = {{19.2747110706908,-30.7252889293092},{28.7252889293092,-21.2747110706908}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Drivers.Planning.FromGround lateralPlanning annotation(Placement(transformation(extent = {{-48.0,58.0},{-28.0,78.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Drivers.Planning.DesiredVelocity planning2(n_info = 1) annotation(Placement(transformation(extent = {{-54.0,-30.0},{-34.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput desired_velocity_preview annotation(Placement(transformation(extent = {{-11.632925860839833,-11.632925860839833},{11.632925860839833,11.632925860839833}},origin = {-10.0,112.0},rotation = -90.0)));
protected
  VehicleDynamics.Drivers.Perception.Interfaces.PerceptsOut perceptsOut
    annotation (Placement(transformation(extent={{60,-56},{80,-36}})));
  VehicleDynamics.Drivers.Planning.Interfaces.PathPointOut pathPointOut[3]
    annotation (Placement(transformation(extent={{14.0,10.0},{34.0,30.0}},rotation = 0.0,origin = {0.0,0.0})));
equation
    connect(lateralTracker.str_cmd,driverOutputs.str_cmd) annotation(Line(points={{29,38},
          {54,38},{54,0.05},{110.05,0.05}},                                                                            color = {0,0,127}));
    connect(longitudinalTracker.acc_cmd,driverOutputs.acc_cmd) annotation(Line(points={{1,-34},
          {55.5,-34},{55.5,0.05},{110.05,0.05}},                                                                              color = {0,0,127}));

    connect(pathPointOut[2].vV_P_x,driverOutputs.vV_P_x[1]) annotation(Line(points={{24,20},{36,20},{36,0.05},{110.05,0.05}},                                                                      color = {255,0,0}));
    connect(pathPointOut[3].vV_P_x,driverOutputs.vV_P_x[2]) annotation(Line(points={{24,20},{36,20},{36,0.05},{110.05,0.05}},                                                                      color = {255,0,0}));

    connect(pathPointOut[1].rV_x,driverOutputs.rV_x) annotation(Line(points={{24,20},{36,20},{36,0.05},{110.05,0.05}},                                                               color = {255,0,0}));
    connect(pathPointOut[1].rV_y,driverOutputs.rV_y) annotation(Line(points={{24,20},{36,20},{36,0.05},{110.05,0.05}},                                                               color = {255,0,0}));

    connect(lateralTracker.previewDistance[1],driverOutputs.previewDistance_y) annotation(Line(points={{14,49},
          {14,58},{96,58},{96,0.05},{110.05,0.05}},                                                                                              color = {0,0,127}));
    connect(lateralTracker.previewTime[1],driverOutputs.previewTime_y) annotation(Line(points={{22,49},
          {22,54},{94,54},{94,0.05},{110.05,0.05}},                                                                                    color = {0,0,127}));

    connect(longitudinalTracker.previewTime,driverOutputs.previewTime) annotation(Line(points={{-6,-19},
          {-6,-4},{46,-4},{46,0.05},{110.05,0.05}},                                                                                       color = {0,0,127}));
    connect(longitudinalTracker.previewDistance,driverOutputs.previewDistance) annotation(Line(points={{-14,-19},
          {-14,0},{56,0},{56,0.05},{110.05,0.05}},                                                                                                  color = {0,0,127}));


    connect(const.y,longitudinalTracker.acc_trk) annotation(Line(points={{-35,-70},
          {-14,-70},{-14,-41}},                                                                           color = {0,0,127}));
    connect(const.y,longitudinalTracker.brk_trk) annotation(Line(points={{-35,-70},
          {-6,-70},{-6,-41.1}},                                                                           color = {0,0,127}));
    connect(perception.percepts,planning.percepts) annotation(Line(points = {{-70,10},{-56,10}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(perception.perceptionFrame,frame_a) annotation(Line(points = {{-82,0},{-82,-90},{0,-90},{0,-100}},color = {95,95,95}));
    connect(perception.dashboardInformation,signalBus.dashboard) annotation(Line(points = {{-82,20},{-82,26},{-100,26},{-100,0}},color = {0,0,0}));

  connect(lateralTracker.percepts, perception.percepts) annotation (Line(
      points={{6,34},{-64,34},{-64,10},{-70,10}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(longitudinalTracker.percepts, perception.percepts) annotation (Line(
      points={{-22,-34},{-70,-34},{-70,10}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(perceptsOut, perception.percepts) annotation (Line(
      points={{70,-46},{-70,-46},{-70,10}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(perceptsOut.v_veh, driverOutputs.v_veh_percepts) annotation (Line(
      points={{70.05,-45.95},{70.05,0.05},{110.05,0.05}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(perceptsOut.vV_x, driverOutputs.vV_x_percepts) annotation (Line(
      points={{70.05,-45.95},{70.05,0.05},{110.05,0.05}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(perceptsOut.vV_y, driverOutputs.vV_y_percepts) annotation (Line(
      points={{70.05,-45.95},{70.05,0.05},{110.05,0.05}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(driverOutputs.vV_P_x_percepts, perceptsOut.vV_P_x) annotation (Line(
        points={{110.05,0.05},{70.05,0.05},{70.05,-45.95}}, color={0,0,127}));
    connect(planning.pathVelocity,desired_velocity) annotation(Line(points = {{-55,14},{-66,14},{-66,92},{-40,92},{-40,112}},color = {0,0,127}));
    connect(gain.y,driverOutputs.brk_cmd) annotation(Line(points = {{29.197817822240122,-26},{56,-26},{56,0},{110,0}},color = {0,0,127}));
    connect(gain.u,longitudinalTracker.brk_cmd) annotation(Line(points = {{18.329653284828957,-26},{1,-26}},color = {0,0,127}));
    connect(lateralTracker.previewDistance,lateralPlanning.previewDistance) annotation(Line(points = {{14,49},{14,85},{-34,85},{-34,79}},color = {0,0,127}));
    connect(lateralTracker.previewTime,lateralPlanning.previewTime) annotation(Line(points = {{22,49},{22,88},{-42,88},{-42,79}},color = {0,0,127}));
    connect(lateralPlanning.pathPoint,lateralTracker.pathPoint) annotation(Line(points = {{-26,68},{-18,68},{-18,42},{6,42}},color = {255,0,0}));
    connect(longitudinalTracker.previewDistance[1],planning.previewDistance[1]) annotation(Line(points = {{-14,-19},{-14,27},{-40,27},{-40,21}},color = {0,0,127}));
    connect(longitudinalTracker.previewTime[1],planning.previewTime[1]) annotation(Line(points = {{-6,-19},{-6,27},{-48,27},{-48,21}},color = {0,0,127}));
    connect(longitudinalTracker.previewDistance[2],planning2.previewDistance[1]) annotation(Line(points = {{-14,-19},{-14,-4},{-40,-4},{-40,-9}},color = {0,0,127}));
    connect(longitudinalTracker.previewTime[2],planning2.previewTime[1]) annotation(Line(points = {{-6,-19},{-6,-3},{-48,-3},{-48,-9}},color = {0,0,127}));
    connect(desired_velocity_preview,planning2.pathVelocity) annotation(Line(points = {{-10,112},{-10,90},{-60,90},{-60,-16},{-55,-16}},color = {0,0,127}));
    connect(lateralPlanning.percepts,perception.percepts) annotation(Line(points = {{-50,68},{-64,68},{-64,10},{-70,10}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(planning2.percepts,perception.percepts) annotation(Line(points = {{-56,-20},{-64,-20},{-64,10},{-70,10}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(longitudinalTracker.pathPoint[1],planning.pathPoint[1]) annotation(Line(points = {{-22,-26},{-28,-26},{-28,10},{-32,10}},color = {255,0,0}));
    connect(longitudinalTracker.pathPoint[2],planning2.pathPoint[1]) annotation(Line(points = {{-22,-26},{-28,-26},{-28,-20},{-32,-20}},color = {255,0,0}));
    connect(lateralPlanning.pathPoint[1],pathPointOut[1]) annotation(Line(points = {{-26,68},{2,68},{2,20},{24,20}},color = {255,0,0}));
    connect(planning.pathPoint[1],pathPointOut[2]) annotation(Line(points = {{-32,10},{0,10},{0,20},{24,20}},color = {255,0,0}));
    connect(planning2.pathPoint[1],pathPointOut[3]) annotation(Line(points = {{-32,-20},{-28,-20},{-28,10},{0,10},{0,20},{24,20}},color = {255,0,0}));
    connect(pathPointOut[1].sG_x,driverOutputs.sG_x) annotation(Line(points = {{24,20},{36,20},{36,0},{110,0}},color = {255,0,0}));
    connect(pathPointOut[1].sG_y,driverOutputs.sG_y) annotation(Line(points = {{24,20},{36,20},{36,0},{110,0}},color = {255,0,0}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end DriverCommands;
