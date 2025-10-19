abstract class HomeState {}

class HomeInitial extends HomeState {}

class UpdateHomeCategory extends HomeState {
  int? categoryTag;
  UpdateHomeCategory(this.categoryTag);
}

class StartSaveDataState extends HomeState{}
class StopSaveDataState extends HomeState{}
class SaveDataSuccessState extends HomeState{}
class SaveDataFailureState extends HomeState{}

class StartLoadDataFromDBState extends HomeState{}
class StopLoadDataFromDBState extends HomeState{}
class LoadDataFromDBSuccessState extends HomeState{}
class LoadDataFromDBFailureState extends HomeState{}
