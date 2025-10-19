import 'package:otex_app_task/core/utils/database_helper.dart';

class PlansDbService {
  final dbHelper = DatabaseHelper.instance;

  Future<void> createTables() async {
    final db = await dbHelper.database;

    await db.execute('''
      CREATE TABLE IF NOT EXISTS plans(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        description TEXT,
        price REAL
      )
    ''');
  }

  Future<void> insertPlan(Map<String, dynamic> plan) async {
    final db = await dbHelper.database;
    await db.insert('plans', plan);
  }

  Future<List<Map<String, dynamic>>> getPlans() async {
    final db = await dbHelper.database;
    return await db.query('plans');
  }
}
