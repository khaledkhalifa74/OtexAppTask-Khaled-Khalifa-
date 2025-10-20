import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/features/plans/data/database/plans_db_service.dart';
import 'package:otex_app_task/features/plans/data/models/plan_model.dart';
import 'package:otex_app_task/features/plans/domain/repos/plans_repo.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_state.dart';

class PlansCubit extends Cubit<PlansState> {
  final PlansRepo plansRepo;
  PlansCubit(this.plansRepo) : super(PlansInitial());

  static PlansCubit get(context) => BlocProvider.of(context);


  List<PlanModel> plans = [];
  PlansDbService plansDbService = PlansDbService();

  Future<void> updatePlanCheckBox(int id, bool newValue) async {
    await plansDbService.updatePlanCheckbox(id, newValue);
    plans = await plansDbService.getPlans();
    emit(UpdatePlanCheckBoxValue());
  }

  Future<void> savePlansToDB() async {
    try {
      emit(StartSaveDataState());
      final savedPlans = await plansRepo.getPlans();
      if(savedPlans.isEmpty){
        await plansRepo.insertPlans(
            [
              PlanModel(
                id: 1,
                planName: 'أساسية',
                planPrice: 2500,
                isHealthPin: false,
                isGlobal: false,
                isPremium: false,
                numberOfAdValidity: 30,
                isSelected: false,
              ),
              PlanModel(
                id: 2,
                planName: 'أكسترا',
                planPrice: 3000,
                isHealthPin: true,
                isGlobal: false,
                isPremium: false,
                numberOfDaysMoveUp: 3,
                numberOfAdValidity: 30,
                isSelected: false,
                numberOfViews: 18
              ),
              PlanModel(
                id: 3,
                planName: 'بلس',
                planPrice: 3500,
                isHealthPin: true,
                isGlobal: true,
                isPremium: true,
                numberOfDaysMoveUp: 3,
                numberOfAdValidity: 30,
                isSelected: true,
                numberOfViews: 24,
                flagText: 'أفضل قيمة مقابل سعر'
              ),
              PlanModel(
                id: 4,
                planName: 'سوبر',
                planPrice: 5000,
                isHealthPin: true,
                isGlobal: true,
                isPremium: true,
                numberOfDaysMoveUp: 3,
                numberOfAdValidity: 30,
                isSelected: true,
                numberOfViews: 30,
                flagText: 'أعلى مشاهدات',
              ),
            ]
        );
      }

      emit(StopSaveDataState());
      emit(SaveDataSuccessState());
    } on Exception {
      emit(StopSaveDataState());
      emit(SaveDataFailureState());
    }
  }

  Future<void> loadHPlansFromDB() async {

    try {
      emit(StartLoadDataFromDBState());
      final savedPlans = await plansRepo.getPlans();
      plans = savedPlans;
      emit(StopLoadDataFromDBState());
      emit(LoadDataFromDBSuccessState());
    } on Exception {
      emit(StopLoadDataFromDBState());
      emit(LoadDataFromDBFailureState());
    }
  }

  Future<void> saveAndLoadPlans()async{
    await savePlansToDB();
    await loadHPlansFromDB();
  }
}