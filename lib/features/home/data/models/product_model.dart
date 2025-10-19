class ProductModel {
  int? id;
  String name;
  String? imageUrl;
  double price;
  double? oldPrice;
  double? salesNumber;
  bool isFavorite;

  ProductModel({
    this.id,
    required this.name,
    this.imageUrl,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'oldPrice': oldPrice,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      price: map['price'],
      oldPrice: map['oldPrice'],
      isFavorite: map['isFavorite'] == 1,
    );
  }
}
