import 'package:otex_app_task/features/plans/data/models/plan_model.dart';

abstract class PlansRepo{

  Future<int> insertPlan(PlanModel plan);
  Future<void> insertPlans(List<PlanModel> plans);
  Future<List<PlanModel>> getPlans();
}