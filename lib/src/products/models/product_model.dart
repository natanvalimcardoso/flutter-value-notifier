// ignore_for_file: prefer_collection_literals

class ProductModel {
  String? id;
  String? title;

  ProductModel({this.id, this.title});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}
