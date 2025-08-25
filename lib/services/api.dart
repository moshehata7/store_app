import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Api {
  final Dio dio;

  Api(this.dio);
  Future<Response> get(final String url) async {
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        "there is an error with status code ${response.statusCode}",
      );
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    final Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({"authorization": "Bearer  $token"});
    }
    Response response = await dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }
}
