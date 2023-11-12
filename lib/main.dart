import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_one/core/main_cubit/cubit/main_cubit.dart';
import 'package:task_one/screens/ui/home_screen.dart';



Future<void> main() async {
  runApp(TravetApp());

}


class TravetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getHotelData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
