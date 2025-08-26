import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class CategoryService {
  Future<List<Product>> getProductsOfCategory( String categoryName) async {
    var data = await Api(Dio()).get(url:"https://fakestoreapi.com/products/category/$categoryName");
    
      List productsOfCategory = data;
      return productsOfCategory.map((product) => Product.fromJson(product)).toList();
    } 
  }
