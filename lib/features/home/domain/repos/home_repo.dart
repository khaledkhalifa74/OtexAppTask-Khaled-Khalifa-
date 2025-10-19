import 'package:otex_app_task/features/home/data/models/product_model.dart';

abstract class HomeRepo{
  Future<void> insertCategories(List<String> categories);
  Future<List<String>> getCategories();

  Future<int> insertProduct(ProductModel product);
  Future<void> insertProducts(List<ProductModel> products);
  Future<List<ProductModel>> getProducts();

}