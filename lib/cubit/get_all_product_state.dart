part of 'get_all_product_cubit.dart';

@immutable
sealed class GetAllProductState {}

final class GetAllProductInitial extends GetAllProductState {}

final class GetAllProductSuccess extends GetAllProductState {
  List<Product> products;
  GetAllProductSuccess(this.products);
}

final class GetAllProductLoading extends GetAllProductState {}

final class GetAllProductFailure extends GetAllProductState {
  final String errorMessage;

  GetAllProductFailure(this.errorMessage);
}
