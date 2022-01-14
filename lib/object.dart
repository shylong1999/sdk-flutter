library sdk_iva_vts;

class Feature {
  int id;
  String name;
  bool enable_image_task;

  Feature({
    required this.id,
    required this.name,
    required this.enable_image_task,
  });

  factory Feature.fromJson(Map<String, dynamic> json) {
    return Feature(
      id: json['id'],
      name: json['name'],
      enable_image_task: json['enable_image_task'],
    );
  }

  @override
  String toString() {
    return 'Feature{id: $id, name: $name}';
  }
}
