import 'package:dio/dio.dart';

class AllCategoriesService {
  final Dio dio;
  AllCategoriesService(this.dio);
  Future<List<dynamic>> getAllCategoris() async {
    Response response = await dio.get(
      "https://fakestoreapi.com/products/categories",
    );
    List categories = response.data;
    return categories;
  }
}
