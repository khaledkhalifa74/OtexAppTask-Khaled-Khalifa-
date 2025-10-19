// lib/features/home/data/home_db_service.dart
import 'package:otex_app_task/core/utils/database_helper.dart';

class HomeDbService {
  final dbHelper = DatabaseHelper.instance;

  Future<void> createTables() async {
    final db = await dbHelper.database;

    // Categories
    await db.execute('''
      CREATE TABLE IF NOT EXISTS categories(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    ''');

    // Product categories
    await db.execute('''
      CREATE TABLE IF NOT EXISTS product_category(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        imageUrl TEXT
      )
    ''');

    // Products
    await db.execute('''
      CREATE TABLE IF NOT EXISTS products(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        imageUrl TEXT,
        price REAL,
        oldPrice REAL,
        salesNumber TEXT NOT NULL,
        isFavorite INTEGER DEFAULT 0
      )
    ''');
  }

  // Example: Insert Product
  Future<void> insertProduct(Map<String, dynamic> product) async {
    final db = await dbHelper.database;
    await db.insert('products', product);
  }

  // Example: Get Products
  Future<List<Map<String, dynamic>>> getProducts() async {
    final db = await dbHelper.database;
    return await db.query('products');
  }
}
