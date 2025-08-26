import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class UpdateProductService {
  final Dio dio;

  UpdateProductService(this.dio);
  Future<Product> updateProduct({
    required String title,
    required String image,
    required String desc,
    required String category,
    required String price,
  }) async {
    Map<String, dynamic> data = await Api(Dio()).put(
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
