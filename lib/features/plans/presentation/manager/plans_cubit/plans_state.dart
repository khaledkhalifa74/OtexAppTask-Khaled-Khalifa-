abstract class PlansState {}

class PlansInitial extends PlansState {}

class UpdatePlanCheckBoxValue extends PlansState {
  UpdatePlanCheckBoxValue();
}
class StartSaveDataState extends PlansState{}
class StopSaveDataState extends PlansState{}
class SaveDataSuccessState extends PlansState{}
class SaveDataFailureState extends PlansState{}

class StartLoadDataFromDBState extends PlansState{}
class StopLoadDataFromDBState extends PlansState{}
class LoadDataFromDBSuccessState extends PlansState{}
class LoadDataFromDBFailureState extends PlansState{}