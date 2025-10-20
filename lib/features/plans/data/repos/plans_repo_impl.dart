import 'package:otex_app_task/core/utils/database_helper.dart';
import 'package:otex_app_task/features/plans/data/models/plan_model.dart';
import 'package:otex_app_task/features/plans/domain/repos/plans_repo.dart';

class PlansRepoImpl extends PlansRepo{
  final dbHelper = DatabaseHelper.instance;


  @override
  Future<List<PlanModel>> getPlans() async{
    final db = await dbHelper.database;
    final result = await db.query('plans');
    return result.map((e) => PlanModel.fromMap(e)).toList();
  }

  @override
  Future<int> insertPlan(PlanModel plan) async{
    final db = await dbHelper.database;
    return await db.insert('plans', plan.toMap());
  }

  @override
  Future<void> insertPlans(List<PlanModel> plans)async {
    final db = await dbHelper.database;
    final batch = db.batch();
    for (var p in plans) {
      batch.insert('plans', p.toMap());
    }
    await batch.commit(noResult: true);
  }

}