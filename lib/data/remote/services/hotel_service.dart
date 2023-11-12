import 'package:dio/dio.dart';



class HotelService{
  static final _instance = HotelService._private();

  HotelService._private();

  factory HotelService() => _instance;

  Future<Response> getData(Dio dio) async {
    return await dio.get('/test/hotels');
  }

}