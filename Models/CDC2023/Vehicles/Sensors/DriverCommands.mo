within CDC2023.Vehicles.Sensors;
model DriverCommands
    .VehicleDynamics.Drivers.Tracking.Blocks.SinglePointLateralTracker lateralTracker annotation(Placement(transformation(extent = {{-12.0,28.0},{8.0,48.0}},origin={20,0},     rotation = 0.0)));
    .VehicleDynamics.Drivers.Tracking.Blocks.SinglePointLongitudinalTracker longitudinalTracker annotation(Placement(transformation(extent = {{-20.0,-40.0},{0.0,-20.0}},                   rotation = 0.0)));
    .VehicleDynamics.Drivers.Planning.DesiredVelocity planning(n_info = 3) annotation(Placement(transformation(extent = {{-60.0,0.0},{-40.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(transformation(extent = {{-60,-80},{-40,-60}},origin={4,0},  rotation = 0)));
    .CDC2023.Vehicles.Interfaces.DriverOutputs driverOutputs annotation(Placement(transformation(extent = {{100.0,-10.0},{120.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Drivers.Perception.Ideal perception annotation(Placement(transformation(extent = {{-90.0,0.0},{-70.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-100.0,0.0},rotation = -90.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {0.0,-100.0},rotation = 90.0)));
    .Modelica.Blocks.Interfaces.RealInput desired_velocity annotation(Placement(transformation(extent = {{-11.632925860839833,-11.632925860839833},{11.632925860839833,11.632925860839833}},origin = {-40.0,112.0},rotation = -90.0)));
protected
  VehicleDynamics.Drivers.Perception.Interfaces.PerceptsOut perceptsOut
    annotation (Placement(transformation(extent={{60,-56},{80,-36}})));
  VehicleDynamics.Drivers.Planning.Interfaces.PathPointOut pathPointOut[
    planning.n_info]
    annotation (Placement(transformation(extent={{22,-70},{42,-50}})));
equation
    connect(lateralTracker.str_cmd,driverOutputs.str_cmd) annotation(Line(points={{29,38},
          {54,38},{54,0.05},{110.05,0.05}},                                                                            color = {0,0,127}));
    connect(longitudinalTracker.brk_cmd,driverOutputs.brk_cmd) annotation(Line(points={{1,-26},
          {55.5,-26},{55.5,0.05},{110.05,0.05}},                                                                              color = {0,0,127}));
    connect(longitudinalTracker.acc_cmd,driverOutputs.acc_cmd) annotation(Line(points={{1,-34},
          {55.5,-34},{55.5,0.05},{110.05,0.05}},                                                                              color = {0,0,127}));

    connect(pathPointOut[2].vV_P_x,driverOutputs.vV_P_x[1]) annotation(Line(points={{32.05,
          -59.95},{36,-59.95},{36,0.05},{110.05,0.05}},                                                                      color = {255,0,0}));
    connect(pathPointOut[3].vV_P_x,driverOutputs.vV_P_x[2]) annotation(Line(points={{32.05,
          -59.95},{36,-59.95},{36,0.05},{110.05,0.05}},                                                                      color = {255,0,0}));

    connect(pathPointOut[1].rV_x,driverOutputs.rV_x) annotation(Line(points={{32.05,
          -59.95},{36,-59.95},{36,0.05},{110.05,0.05}},                                                               color = {255,0,0}));
    connect(pathPointOut[1].rV_y,driverOutputs.rV_y) annotation(Line(points={{32.05,
          -59.95},{36,-59.95},{36,0.05},{110.05,0.05}},                                                               color = {255,0,0}));

    connect(lateralTracker.previewDistance[1],driverOutputs.previewDistance_y) annotation(Line(points={{14,49},
          {14,58},{96,58},{96,0.05},{110.05,0.05}},                                                                                              color = {0,0,127}));
    connect(lateralTracker.previewTime[1],driverOutputs.previewTime_y) annotation(Line(points={{22,49},
          {22,54},{94,54},{94,0.05},{110.05,0.05}},                                                                                    color = {0,0,127}));

    connect(longitudinalTracker.previewTime,driverOutputs.previewTime) annotation(Line(points={{-6,-19},
          {-6,-4},{46,-4},{46,0.05},{110.05,0.05}},                                                                                       color = {0,0,127}));
    connect(longitudinalTracker.previewDistance,driverOutputs.previewDistance) annotation(Line(points={{-14,-19},
          {-14,0},{56,0},{56,0.05},{110.05,0.05}},                                                                                                  color = {0,0,127}));


    connect(longitudinalTracker.previewDistance[1],planning.previewDistance[2]) annotation(Line(points={{-14,-19},{-14,21},{-46,21}},                                                                                                                              color = {0,0,127}));
    connect(longitudinalTracker.previewDistance[2],planning.previewDistance[3]) annotation(Line(points={{-14,-19},
          {-14,21.3333},{-46,21.3333}},                                                                                                                                                                                                        color = {0,0,127}));

    connect(longitudinalTracker.previewTime[1],planning.previewTime[2]) annotation(Line(points={{-6,-19},{-6,21},{-54,21}},                                                                                                 color = {0,0,127}));
    connect(longitudinalTracker.previewTime[2],planning.previewTime[3]) annotation(Line(points={{-6,-19},
          {-6,27},{-54,27},{-54,21.3333}},                                                                                                                                                                                      color = {0,0,127}));

    connect(lateralTracker.previewDistance[1],planning.previewDistance[1]) annotation(Line(points={{14,49},
          {14,54},{-46,54},{-46,20.6667}},                                                                                                                                                                                  color = {0,0,127}));
    connect(lateralTracker.previewTime[1],planning.previewTime[1]) annotation(Line(points={{22,49},
          {22,54},{38,54},{38,20.6667},{-54,20.6667}},                                                                                                                                                color = {0,0,127}));


    connect(const.y,longitudinalTracker.acc_trk) annotation(Line(points={{-35,-70},
          {-14,-70},{-14,-41}},                                                                           color = {0,0,127}));
    connect(const.y,longitudinalTracker.brk_trk) annotation(Line(points={{-35,-70},
          {-6,-70},{-6,-41.1}},                                                                           color = {0,0,127}));
    connect(perception.percepts,planning.percepts) annotation(Line(points = {{-68,10},{-62,10}},color = {0,128,255},pattern = LinePattern.Dash));
    connect(perception.perceptionFrame,frame_a) annotation(Line(points = {{-80,0},{-80,-90},{0,-90},{0,-100}},color = {95,95,95}));
    connect(perception.dashboardInformation,signalBus.dashboard) annotation(Line(points = {{-80,20},{-80,26},{-100,26},{-100,0}},color = {0,0,0}));

  connect(lateralTracker.percepts, perception.percepts) annotation (Line(
      points={{6,34},{-68,34},{-68,10}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(longitudinalTracker.percepts, perception.percepts) annotation (Line(
      points={{-22,-34},{-68,-34},{-68,10}},
      color={0,128,255},
      pattern=LinePattern.Dash,
      thickness=0.5));
  connect(perceptsOut, perception.percepts) annotation (Line(
      points={{70,-46},{-68,-46},{-68,10}},
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
  connect(pathPointOut, planning.pathPoint) annotation (Line(
      points={{32,-60},{-30,-60},{-30,10},{-38,10}},
      color={255,0,0},
      thickness=1));
  connect(longitudinalTracker.pathPoint[1], planning.pathPoint[2]) annotation (
      Line(
      points={{-22,-26},{-28,-26},{-28,10},{-38,10}},
      color={255,0,0},
      thickness=1));
  connect(longitudinalTracker.pathPoint[2], planning.pathPoint[3]) annotation (
      Line(
      points={{-22,-26},{-28,-26},{-28,10.6667},{-38,10.6667}},
      color={255,0,0},
      thickness=1));
  connect(lateralTracker.pathPoint[1], planning.pathPoint[1]) annotation (Line(
      points={{6,42},{-28,42},{-28,9.33333},{-38,9.33333}},
      color={255,0,0},
      thickness=1));
    connect(planning.pathVelocity,desired_velocity) annotation(Line(points = {{-61,14},{-66,14},{-66,92},{-40,92},{-40,112}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end DriverCommands;
