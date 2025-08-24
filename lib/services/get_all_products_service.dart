import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';

class ProductService {
  final Dio dio;
  ProductService(this.dio);
  Future<List<Product>> getAllProduct() async {
    Response response = await dio.get("https://fakestoreapi.com/products");
    try {
      List products = response.data;
      return products.map((product) => Product.fromJson(product)).toList();
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
}
