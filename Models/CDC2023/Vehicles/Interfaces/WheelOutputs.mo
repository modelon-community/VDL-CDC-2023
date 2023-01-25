within CDC2023.Vehicles.Interfaces;

connector WheelOutputs "Contact patch locations"
  .Modelica.Blocks.Interfaces.RealOutput i(final quantity="ElectricCurrent", final unit="A")
    "Wheel motor current";
  .Modelica.Blocks.Interfaces.RealOutput tau(final quantity="Torque", final unit="N.m")
    "Wheel motor torque";
  .Modelica.Blocks.Interfaces.RealOutput pow(final quantity="Power", final unit="W")
    "Wheel motor power";
  .Modelica.Blocks.Interfaces.RealOutput phi_str(final quantity="Angle", final unit="rad")
    "Tyre steering angle";
  .Modelica.Blocks.Interfaces.RealOutput f_z(final quantity="Force", final unit="N")
    "Tyre vertical force";
  .Modelica.Blocks.Interfaces.RealOutput f_y(final quantity="Force", final unit="N")
    "Tyre lateral force";
  .Modelica.Blocks.Interfaces.RealOutput f_x(final quantity="Force", final unit="N")
    "Tyre longitudinal force";
end WheelOutputs;
