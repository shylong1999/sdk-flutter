library sdk_iva_vts;

import 'package:sdk_iva_vts/object.dart';

class FeatureDetails extends Feature {
  String description;
  Object config_format;

  FeatureDetails({required id, required name, required enable_image_task,required this.description,required this.config_format})
      : super(id: id, name: name, enable_image_task: enable_image_task);

  factory FeatureDetails.fromJson(Map<String, dynamic> json) {
    return FeatureDetails(
      id: json['id'],
      name: json['name'],
      enable_image_task: json['enable_image_task'],
      description: json['description'],
      config_format: json['config_format'],
    );
  }

  @override
  String toString() {
    return 'FeatureDetails{id: $id ,description: $description, config_format: $config_format}';
  }
}