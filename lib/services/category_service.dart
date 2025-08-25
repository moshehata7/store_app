import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class CategoryService {
  Future<List<Product>> getProductsOfCategory( String categoryName) async {
    Response response = await Api(Dio()).get("https://fakestoreapi.com/products/category/$categoryName");
    
      List productsOfCategory = response.data;
      return productsOfCategory.map((product) => Product.fromJson(product)).toList();
    } 
  }
