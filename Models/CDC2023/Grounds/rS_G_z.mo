within CDC2023.Grounds;
function rS_G_z "Flat (no) surface unevenness"
  extends VehicleDynamics.Grounds.Interfaces.rS_G_z;
  input Real height = 0.01 "Height of uneveness";
  input .Modelica.Units.SI.Length longitudinal_wavelength = 2.7 "Wavelength of uneveness in longitudinal direction";
  input .Modelica.Units.SI.Length lateral_wavelength = 1.5 "Wavelength of uneveness in lateral direction";
algorithm
  rS_G_z := height*sin(2*.Modelica.Constants.pi*rG_G_x/longitudinal_wavelength)*sin(2*.Modelica.Constants.pi*rG_G_y/lateral_wavelength);
end rS_G_z;
