import 'package:otex_app_task/core/utils/database_helper.dart';
import 'package:otex_app_task/features/plans/data/models/plan_model.dart';

class PlansDbService {
  final dbHelper = DatabaseHelper.instance;

  Future<void> createTables() async {
    final db = await dbHelper.database;

    await db.execute('''
    CREATE TABLE IF NOT EXISTS plans(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    planName TEXT NOT NULL,
    planPrice REAL NOT NULL,
    isHealthPin INTEGER,
    isGlobal INTEGER,
    isPremium INTEGER,
    numberOfDaysMoveUp INTEGER,
    numberOfAdValidity INTEGER,
    isSelected INTEGER DEFAULT 0,
    numberOfViews INTEGER,
    flagText TEXT NULL
  )
''');
  }

  Future<int> insertPlan(PlanModel plan) async {
    final db = await dbHelper.database;
    return await db.insert('plans', plan.toMap());
  }

  Future<List<PlanModel>> getPlans() async {
    final db = await dbHelper.database;
    final result = await db.query('plans');
    return result.map((e) => PlanModel.fromMap(e)).toList();
  }

  Future<void> updatePlanCheckbox(int id, bool value) async {
    final db = await dbHelper.database;
    await db.update(
      'plans',
      {'isSelected': value ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
