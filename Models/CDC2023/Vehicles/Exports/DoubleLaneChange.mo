within CDC2023.Vehicles.Exports;
model DoubleLaneChange
    extends .CDC2023.Vehicles.Exports.Sedan(redeclare replaceable .CDC2023.Grounds.OpenCRGUneven ground(file_name = Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/crg-txt/flat_250.crg"),override_offset = false,path_file = Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/crg-pth/doubleLaneChange.mat"),path_velocity = 16.66666666666666666667,visualize_cones = true,visualize_path = true),vehicle(r_y_start = -2));
end DoubleLaneChange;
