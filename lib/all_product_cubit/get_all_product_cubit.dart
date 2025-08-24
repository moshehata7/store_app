import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products_service.dart';

part 'get_all_product_state.dart';

class GetAllProductCubit extends Cubit<GetAllProductState> {
  GetAllProductCubit(this.productService) : super(GetAllProductInitial());
  final ProductService productService;
  void getAllProduct() async {
    emit(GetAllProductLoading());
    try {
      List<Product> products = await productService.getAllProduct();
      emit(GetAllProductSuccess(products));
    } catch (e) {
      emit(GetAllProductFailure(e.toString()));
    }
  }
}
