within CDC2023.Grounds;
model WavyUneven "Wavy uneven ground with parametric wavelength and height"
  extends .VehicleDynamics.Grounds.Uneveness.TabularUneven(unevenness_table = [0, transpose([ylims[1]:dsy:ylims[2]]); xlims[1]:dsx:xlims[2], height*sin(2*.Modelica.Constants.pi*[xlims[1]:dsx:xlims[2]]/longitudinal_wavelength)*transpose(sin(2*.Modelica.Constants.pi*[ylims[1]:dsy:ylims[2]]/lateral_wavelength))]);
    parameter Real height = 0.01 "Height of uneveness";
    parameter .Modelica.Units.SI.Length longitudinal_wavelength = 2.7 "Wavelength of uneveness in longitudinal direction";
    parameter .Modelica.Units.SI.Length lateral_wavelength = 1.5 "Wavelength of uneveness in lateral direction";
    parameter .Modelica.Units.SI.Length dsx = 0.5 "Resolution of uneveness";
    parameter .Modelica.Units.SI.Length dsy = 0.25 "Resolution of uneveness";
    parameter .Modelica.Units.SI.Position[2] xlims = {-5,250} "Extent in longitudinal direction";
    parameter .Modelica.Units.SI.Position[2] ylims = {-5,5} "Extent in lateral direction";

end WavyUneven;
