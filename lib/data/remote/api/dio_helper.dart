import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio(BaseOptions(
    baseUrl: 'https://www.hotelsgo.co',
    receiveDataWhenStatusError: true,
  ));

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {

      'Content-Type': 'application/json',

    };
    return await dio.get(url, queryParameters: query);
  }


}
