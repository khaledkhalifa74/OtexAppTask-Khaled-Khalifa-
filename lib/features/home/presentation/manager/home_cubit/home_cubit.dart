import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/features/home/data/models/product_category_model.dart';
import 'package:otex_app_task/features/home/data/models/product_model.dart';
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
  List<ProductModel> products = [];
  List<ProductCategoryModel> productsCategory = [];
  void updateCategory(int value){
    if (categoryTag != value) {
      categoryTag = value;
      emit(UpdateHomeCategory(categoryTag));
    }
  }


  Future<void> saveHomeDataToDB() async {
    try {
      emit(StartSaveDataState());
      final savedCategories = await homeRepo.getCategories();
      if(savedCategories.isEmpty){
        await homeRepo.insertCategories(categories);
      }
      final savedProducts = await homeRepo.getProducts();
      if(savedProducts.isEmpty){
        await homeRepo.insertProducts(
          [
            ProductModel(
              id: 1,
                name: 'جاكيت من الصوف مناسب',
                price: 3000,
                oldPrice: 5000,
                imageUrl: AssetsData.sweatshirtItem,
                isFavorite: true,
                salesNumber: '3.3k'
            ),
            ProductModel(
              id: 2,
              name: 'قميص مميز',
              price: 600,
              oldPrice: 1000,
              imageUrl: AssetsData.shirtItem,
              isFavorite: false,
              salesNumber: '2k'
            ),
            ProductModel(
              id: 3,
              name: 'حذاء رياضي',
              price: 1200,
              oldPrice: 1500,
              imageUrl: AssetsData.shoesItem,
              isFavorite: false,
              salesNumber: '4k',
            ),
            ProductModel(
              id: 4,
              name: 'هودي بقصة مميزة',
              price: 2500,
              oldPrice: 4000,
              imageUrl: AssetsData.sweatshirtItem,
              isFavorite: false,
              salesNumber: '1.5l'
            ),
          ]
        );
      }
      final savedProductsCategory = await homeRepo.getProductsCategory();
      if(savedProductsCategory.isEmpty){
        await homeRepo.insertProductsCategory(
            [
              ProductCategoryModel(
                  id: 1,
                  name: 'ساعات',
                  imageUrl: AssetsData.watchItem,
              ),
              ProductCategoryModel(
                  id: 2,
                  name: 'أحذية',
                  imageUrl: AssetsData.shoesCategoryItem,
              ),
              ProductCategoryModel(
                id: 3,
                name: 'موبايلات',
                imageUrl: AssetsData.phoneItem,
              ),
              ProductCategoryModel(
                id: 4,
                name: 'منتجات تجميل',
                imageUrl: AssetsData.beautyProductsItem,
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

  Future<void> loadHomeDataFromDB() async {

    try {
      emit(StartLoadDataFromDBState());
      final savedCategories = await homeRepo.getCategories();
      categories = savedCategories;
      final savedProducts = await homeRepo.getProducts();
      products = savedProducts;
      final savedProductsCategory = await homeRepo.getProductsCategory();
      productsCategory = savedProductsCategory;
      emit(StopLoadDataFromDBState());
      emit(LoadDataFromDBSuccessState());
    } on Exception {
      emit(StopLoadDataFromDBState());
      emit(LoadDataFromDBFailureState());
    }
  }

  Future<void> saveAndLoadHomeData()async{
    await saveHomeDataToDB();
    await loadHomeDataFromDB();
    // final dbPath = await getDatabasesPath();
    // final path = join(dbPath, 'offers_app.db');
    // await deleteDatabase(path);
  }
}