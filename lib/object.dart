library sdk_iva_vts;

class Feature {
  int id;
  String name;

  Feature({
    required this.id,
    required this.name
  });

  factory Feature.fromJson(Map<String, dynamic> json) {
    return Feature(
      id: json['id'],
      name: json['name']
    );
  }

  @override
  String toString() {
    return 'Feature{id: $id, name: $name}';
  }
}