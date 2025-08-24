import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/category_service.dart';

part 'category_state.dart';

class CategoryProductsCubit extends Cubit<CategoryProductsState> {
  CategoryProductsCubit(this.categoryService) : super(CategoryProductsInitial());
  final CategoryService categoryService;
  void getProductsOfCategory(final String categoryName ) async {
    emit(CategoryProductsLoading());
    try {
      List<Product> products = await categoryService.getProductsOfCategory( categoryName);
      emit(CategoryProductsLoaded(products));
    } catch (e) {
      emit(CategoryProductsFailure(e.toString()));
    }
  }
}
