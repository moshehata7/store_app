import 'package:dio/dio.dart';
import 'package:store_app/services/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategoris() async {
    var data = await Api(Dio()).get(
      url: "https://fakestoreapi.com/products/categories"
    );
    List categories = data;
    return categories;
  }
}
