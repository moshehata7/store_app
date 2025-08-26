import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class ProductService {
  Future<List<Product>> getAllProduct() async {
    var data = await Api(Dio()).get(url:"https://fakestoreapi.com/products");
    
      List products = data;
      return products.map((product) => Product.fromJson(product)).toList();
    } 
  }

