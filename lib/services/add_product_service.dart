import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class AddProductService {
  final Dio dio;

  AddProductService(this.dio);
  Future<Product> addProduct({
    required String title,
    required String image,
    required String desc,
    required String category,
    required String price,
  }) async {
    Map<String, dynamic> data = await Api(Dio()).post(
      url: "url",
      body: {
        "description": desc,
        "image": image,
        "category": category,
        "price": price,
        "title": title,
      },
    );
    return Product.fromJson(data);
  }
}
