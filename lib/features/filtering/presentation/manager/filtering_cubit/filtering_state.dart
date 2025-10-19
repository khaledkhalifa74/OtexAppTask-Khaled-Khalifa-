abstract class FilteringState {}

class FilteringInitial extends FilteringState {}

class UpdateTypeCValue extends FilteringState {
  int? value;
  UpdateTypeCValue(this.value);
}

class UpdateSecondChipValue extends FilteringState {
  int? value;
  UpdateSecondChipValue(this.value);
}

class UpdatePaymentWayValue extends FilteringState {
  int? value;
  UpdatePaymentWayValue(this.value);
}

class UpdateStatusValue extends FilteringState {
  int? value;
  UpdateStatusValue(this.value);
}