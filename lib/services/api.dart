import 'package:dio/dio.dart';

class Api {
  final Dio dio;

  Api(this.dio);
  Future<Response> get(final String url) async {
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("there is an error with status code ${response.statusCode}");
    }
  }
}
