abstract class HomeState {}

class HomeInitial extends HomeState {}

class UpdateHomeCategory extends HomeState {
  int? categoryTag;
  UpdateHomeCategory(this.categoryTag);
}