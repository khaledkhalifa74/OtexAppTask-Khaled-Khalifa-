abstract class PlansState {}

class PlansInitial extends PlansState {}

class UpdatePlanCheckBoxValue extends PlansState {
  bool? checkBoxValue;
  UpdatePlanCheckBoxValue(this.checkBoxValue);
}