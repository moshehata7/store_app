import 'package:dio/dio.dart';
import 'package:store_app/services/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategoris() async {
    Response response = await Api(Dio()).get(
      "https://fakestoreapi.com/products/categories",
    );
    List categories = response.data;
    return categories;
  }
}
