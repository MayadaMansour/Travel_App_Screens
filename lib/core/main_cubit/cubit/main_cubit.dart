
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/remote/api/dio_factory.dart';
import '../../../data/remote/services/hotel_service.dart';
import '../../../model/data_model.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);
  

  List<HotelData>? hotel;


  void getHotelData() {
    HotelService().getData(DioFactory.createDio()).then((value) {
      hotel = (value.data as List).map((e) => HotelData.fromJson(e)).toList();
      emit(SuccessHomeData());
      print("object");
    }).catchError((error) {
      emit(ErrorHomeData());
      print(error.toString());
    });
  }



}



