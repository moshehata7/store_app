import 'package:dio/dio.dart';
import 'package:store_app/services/api.dart';

class AddProductService {
  final Dio dio;

  AddProductService(this.dio);
  addProduct() {
    Api(Dio()).post(url: "url", body: {}, token: "token");
  }
}
