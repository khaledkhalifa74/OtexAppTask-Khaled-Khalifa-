import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/features/filtering/presentation/manager/filtering_cubit/filtering_state.dart';

class FilteringCubit extends Cubit<FilteringState> {
  FilteringCubit() : super(FilteringInitial());

  static FilteringCubit get(context) => BlocProvider.of(context);


  // first chip choice
  int typeChipTag = 0;
  List<String> types = [
    'الكل',
    'تاون هاوس',
    'فيلا منفصلة',
    'شقة'
  ];
  void updateTypeValue(int value){
    if (typeChipTag != value) {
      typeChipTag = value;
      emit(UpdateTypeCValue(typeChipTag));
    }
  }

  // second chip choice
  int secondChipTag = 0;
  List<String> typesOfRooms = [
    'الكل',
    'غرفة',
    'غرفتين',
    '3 غرف',
    '4 غرف',
    '5 غرف+'
  ];
  void updateSecondChipValue(int value){
    if (secondChipTag != value) {
      secondChipTag = value;
      emit(UpdateSecondChipValue(secondChipTag));
    }
  }

  // payment way chip choice
  int paymentWatTag = 0;
  List<String> paymentWays = [
    'أى',
    'تقسيط',
    'كاش',
  ];
  void updatePaymentWayValue(int value){
    if (paymentWatTag != value) {
      paymentWatTag = value;
      emit(UpdatePaymentWayValue(paymentWatTag));
    }
  }

  // status chip choice
  int statusTag = 0;
  List<String> statusTypes = [
    'أى',
    'جاهز',
    'قيد الإنشاء',
  ];
  void updateStatusValue(int value){
    if (statusTag != value) {
      statusTag = value;
      emit(UpdateStatusValue(statusTag));
    }
  }

}