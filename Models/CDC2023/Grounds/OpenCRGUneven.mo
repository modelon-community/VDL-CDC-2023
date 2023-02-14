within CDC2023.Grounds;
model OpenCRGUneven
  extends VehicleDynamics.Grounds.OpenCRG(
    redeclare final function rS_G_z = CDC2023.Grounds.rS_G_z (
      height=height,
      longitudinal_wavelength=longitudinal_wavelength,
      lateral_wavelength=lateral_wavelength));
  parameter Real height = 0.01 "Height of uneveness";
  parameter .Modelica.Units.SI.Length longitudinal_wavelength = 2.7 "Wavelength of uneveness in longitudinal direction";
  parameter .Modelica.Units.SI.Length lateral_wavelength = 1.5 "Wavelength of uneveness in lateral direction";
end OpenCRGUneven;
