import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/features/home/domain/repos/home_repo.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  bool isFreeShipping = true;

  // categories
  int categoryTag = 0;
  List<String> categories= [
    'كل العروض',
    'ملابس',
    'أكسسوارات',
    'الكترونيات',
    'منتجات تجميل',
  ];
  void updateCategory(int value){
    if (categoryTag != value) {
      categoryTag = value;
      emit(UpdateHomeCategory(categoryTag));
    }
  }


  Future<void> saveCategoriesToDB() async {
    final savedCategories = await homeRepo.getCategories();
    if(savedCategories.isEmpty){
      await homeRepo.insertCategories(categories);
    }
  }

  Future<void> loadCategoriesFromDB() async {
    final savedCategories = await homeRepo.getCategories();
    categories = savedCategories;
    emit(LoadCategoriesSuccessfully(categories));
  }

  Future<void> saveAndLoadCategories()async{
    await saveCategoriesToDB();
    await loadCategoriesFromDB();
  }
}