import 'dart:convert';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String thumbnail;
  final String category;
  final List<dynamic> images;
  final String description;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.thumbnail,
      required this.category,
      required this.description,
      required this.images});
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id']?.toInt() ?? 0,
        title: (json['title'] ?? '').toString(),
        price: json['price']?.toDouble(),
        thumbnail: json['thumbnail'],
        category: json['category'],
        images:
            (json['images'] as List<dynamic>).map((e) => e.toString()).toList(),
        description: (json['description']));
  }
}

List<ProductModel> productModelFromjson(String jsonString) {
  final productList = (json.decode(jsonString))["products"] as List<dynamic>;
  return List<ProductModel>.from(
      productList.map((product) => ProductModel.fromJson(product)).toList());
}
