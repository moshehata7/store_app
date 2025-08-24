part of 'category_cubit.dart';

@immutable
sealed class CategoryProductsState {}

final class CategoryProductsInitial extends CategoryProductsState {}

final class CategoryProductsLoaded extends CategoryProductsState {
  List<Product> products;
  CategoryProductsLoaded(this.products);
}

final class CategoryProductsLoading extends CategoryProductsState {}

final class CategoryProductsFailure extends CategoryProductsState {
  final String errorMessage;

  CategoryProductsFailure(this.errorMessage);
}
