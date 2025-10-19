import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_state.dart';

class PlansCubit extends Cubit<PlansState> {
  PlansCubit() : super(PlansInitial());

  static PlansCubit get(context) => BlocProvider.of(context);


  // categories
  bool planCheckBoxValue = false;
  void updatePlanCheckBox(bool value){
    if (planCheckBoxValue != value) {
      planCheckBoxValue = value;
      emit(UpdatePlanCheckBoxValue(planCheckBoxValue));
    }
  }
}