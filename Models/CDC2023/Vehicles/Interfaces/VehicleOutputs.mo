within CDC2023.Vehicles.Interfaces;
connector VehicleOutputs "Vehicle Outputs"
    .Modelica.Blocks.Interfaces.RealOutput phi_p(final quantity="Angle", final unit="rad")
    "Body roll angle";
    .Modelica.Blocks.Interfaces.RealOutput phi_q(final quantity="Angle", final unit="rad")
    "Body pitch angle";
    .Modelica.Blocks.Interfaces.RealOutput phi_r(final quantity="Angle", final unit="rad")
    "Body yaw angle";
    .Modelica.Blocks.Interfaces.RealOutput omg_p(final quantity="AngularVelocity", final unit="rad/s")
    "Body roll speed";
    .Modelica.Blocks.Interfaces.RealOutput omg_q(final quantity="AngularVelocity", final unit="rad/s")
    "Body pitch speed";
    .Modelica.Blocks.Interfaces.RealOutput omg_r(final quantity="AngularVelocity", final unit="rad/s")
    "Body yaw speed";
    .Modelica.Blocks.Interfaces.RealOutput a_z(final quantity="Acceleration", final unit="m/s2")
    "Body vertical acceleration";
    .Modelica.Blocks.Interfaces.RealOutput a_y(final quantity="Acceleration", final unit="m/s2")
    "Body lateral acceleration";
    .Modelica.Blocks.Interfaces.RealOutput a_x(final quantity="Acceleration", final unit="m/s2")
    "Body longitudinal acceleration";
    .Modelica.Blocks.Interfaces.RealOutput v_z(final quantity="Velocity", final unit="m/s")
    "Body vertical velocity";
    .Modelica.Blocks.Interfaces.RealOutput v_y(final quantity="Velocity", final unit="m/s")
    "Body lateral velocity";
    .Modelica.Blocks.Interfaces.RealOutput v_x(final quantity="Velocity", final unit="m/s")
    "Body longitudinal velocity";
    .Modelica.Blocks.Interfaces.RealOutput v_bat(final quantity="Voltage", final unit="V")
    "Battery voltage";
    .Modelica.Blocks.Interfaces.RealOutput v_t_y(final quantity="Velocity", final unit="m/s")
    "Target body lateral speed";
    .Modelica.Blocks.Interfaces.RealOutput v_t_x(final quantity="Velocity", final unit="m/s")
    "Target body longitudinal speed";
    .Modelica.Blocks.Interfaces.RealOutput s_t_y(final quantity="Position", final unit="m")
    "Target body lateral position";
    .Modelica.Blocks.Interfaces.RealOutput s_t_x(final quantity="Position", final unit="m")
    "Target body longitudinal position";
    WheelOutputs FL_wheel;
    WheelOutputs FR_wheel;
    WheelOutputs RL_wheel;
    WheelOutputs RR_wheel;
    annotation(Icon(
      coordinateSystem(preserveAspectRatio=true,
        extent={{-100.0,-100.0},{100.0,100.0}}),
        graphics={Polygon(lineColor={0,0,127},fillColor={255,255,255},fillPattern=FillPattern.Solid,points={{-100.0,100.0},{100.0,0.0},{-100.0,-100.0}}),Bitmap(fileName="modelica://VehicleDynamics/Resources/Images/Vehicles/Chassis/PackageIcon.png",origin={-24,3.000000000000003},extent={{-86,69},{86,-69}},rotation=180)}));
end VehicleOutputs;
