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
    annotation(Documentation(info = "<html><p>This is a ground model extending from&nbsp;<a href=\"modelica://VehicleDynamics.Grounds.Uneveness.TabularUneven\">TabularUneven</a>&nbsp;ground and adding a parametric unevenness_table which is superimposed on the tabular ground model.</p><p>The unevenness_table is parametrized in the longitudinal direction as a sinusoidal surface defined using the&nbsp;longitudinal_wavelength and height parameters. The lateral direction is parametrized the same way using the&nbsp;lateral_wavelength and height parameters. The dsx and dsy parameters define the resolution in the two directions while the xlims and ylims parameters define the extent of the unevenness.</p><p><span>For more information, see the documentation in<span>&nbsp;</span></span><a href=\"modelica://VehicleDynamics.Grounds.TabularRoad\">VehicleDynamics.Grounds.TabularRoad</a><span><span>&nbsp;</span>and<span>&nbsp;</span></span><a href=\"modelica://VehicleDynamics.Grounds.Uneveness\">VehicleDynamics.Grounds.Uneveness</a><span>.</span></p></html>"));

end WavyUneven;
