import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_one/screens/ui/home_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;

  startTimer(){
    var duration= Duration(seconds: 4);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacementNamed(context, "Home");
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Scaffold(
          body: Center(child: Lottie.asset('assets/lottie/lottiee.json')),
        ),
      );

  }
}