import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool isFreeShipping = true;

  // categories
  int categoryTag = 0;
  List<String> categories= [
    'كل العروض',
    'ملابس',
    'أكسسوارات',
    'الكترونيات'
  ];
  void updateCategory(int value){
    if (categoryTag != value) {
      categoryTag = value;
      emit(UpdateHomeCategory(categoryTag));
    }
  }
}