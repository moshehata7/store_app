import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';

class CategoryService {
  final Dio dio;
  CategoryService(this.dio);
  Future<List<Product>> getProductsOfCategory( String categoryName) async {
    Response response = await dio.get("https://fakestoreapi.com/products/category/$categoryName");
    try {
      List productsOfCategory = response.data;
      return productsOfCategory.map((product) => Product.fromJson(product)).toList();
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
}