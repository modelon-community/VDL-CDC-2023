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
    annotation(Documentation(info = "<html><p>This is a ground model extending from&nbsp;<a href=\"modelica://VehicleDynamics.Grounds.OpenCRG\">OpenCRG</a> ground and adding a parametric elevation data. This is done by redeclaring the OpenCRG rS_G_z function with&nbsp;<a href=\"modelica://CDC2023.Grounds.rS_G_z\">CDC2023.Grounds.rS_G_z</a>&nbsp;which has inputs for&nbsp;longitudinal_wavelength, lateral_wavelength and height. These parameters define two sinusoidal surfaces in the longitudinal and lateral direction with an amplitude of height.</p><p>More information on the ground models can be found in&nbsp;</p><p><a href=\"modelica://VehicleDynamics.Grounds.Information\">Information</a>.</p></html>"));
end OpenCRGUneven;
