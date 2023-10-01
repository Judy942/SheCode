class WasteModel {
  int? id;
  String? name;
  String? category;
  String? image;
  String? description;
  String? usage;

  WasteModel({
    this.id,
    this.name,
    this.category,
    this.image,
    this.description,
    this.usage,
  });

  WasteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    image = json['image'];
    description = json['description'];
    usage = json['usage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['category'] = category;
    data['image'] = image;
    data['description'] = description;
    data['usage'] = usage;
    return data;
  }
}
