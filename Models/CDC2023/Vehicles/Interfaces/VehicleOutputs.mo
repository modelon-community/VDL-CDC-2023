within CDC2023.Vehicles.Interfaces;

connector VehicleOutputs "Contact patch locations"
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
    .Modelica.Blocks.Interfaces.RealOutput a_z(final quantity="Acceleration", final unit="m/s^2")
    "Body vertical acceleration";
    .Modelica.Blocks.Interfaces.RealOutput a_y(final quantity="Acceleration", final unit="m/s^2")
    "Body lateral acceleration";
    .Modelica.Blocks.Interfaces.RealOutput a_x(final quantity="Acceleration", final unit="m/s^2")
    "Body longitudinal acceleration";
    .Modelica.Blocks.Interfaces.RealOutput v_z(final quantity="Velocity", final unit="m/s")
    "Body vertical velocity";
    .Modelica.Blocks.Interfaces.RealOutput v_y(final quantity="Velocity", final unit="m/s")
    "Body lateral velocity";
    .Modelica.Blocks.Interfaces.RealOutput v_x(final quantity="Velocity", final unit="m/s")
    "Body longitudinal velocity";
    .Modelica.Blocks.Interfaces.RealOutput v_bat(final quantity="Voltage", final unit="V")
    "Battery voltage";
    WheelOutputs FL_wheel;
    WheelOutputs FR_wheel;
    WheelOutputs RL_wheel;
    WheelOutputs RR_wheel;
end VehicleOutputs;
