import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class ProductService {
  Future<List<Product>> getAllProduct() async {
    Response response = await Api(Dio()).get("https://fakestoreapi.com/products");
    
      List products = response.data;
      return products.map((product) => Product.fromJson(product)).toList();
    } 
  }

