import 'package:otex_app_task/core/utils/database_helper.dart';
import 'package:otex_app_task/features/home/data/models/product_model.dart';
import 'package:otex_app_task/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  final dbHelper = DatabaseHelper.instance;

  @override
  Future<void> insertCategories(List<String> categories) async{
    final db = await dbHelper.database;
    final batch = db.batch();
    for (var c in categories) {
      batch.insert('categories', {'name': c});
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<List<String>> getCategories() async{
    final db = await dbHelper.database;
    final result = await db.query('categories');
    return result.map((e) => e['name'] as String).toList();
  }

  @override
  Future<int> insertProduct(ProductModel product) async {
    final db = await dbHelper.database;
    return await db.insert('products', product.toMap());
  }

  @override
  Future<void> insertProducts(List<ProductModel> products) async{
    final db = await dbHelper.database;
    final batch = db.batch();
    for (var p in products) {
      batch.insert('products', p.toMap());
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<List<ProductModel>> getProducts() async{
    final db = await dbHelper.database;
    final result = await db.query('products');
    return result.map((e) => ProductModel.fromMap(e)).toList();
  }
}