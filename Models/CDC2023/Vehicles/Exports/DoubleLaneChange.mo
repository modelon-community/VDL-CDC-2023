within CDC2023.Vehicles.Exports;
model DoubleLaneChange
    extends .CDC2023.Vehicles.Exports.Sedan(redeclare replaceable .VehicleDynamics.Grounds.OpenCRG ground(file_name = Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/crg-txt/flat_250.crg"),override_velocity = false,path_file = Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/crg-pth/doubleLaneChange.mat"),override_offset = false),vehicle(r_y_start = -2));
end DoubleLaneChange;
