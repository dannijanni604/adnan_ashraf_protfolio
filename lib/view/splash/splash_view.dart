import 'dart:async';
import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../../view/home/home.dart';
import '../../view/splash/componenets/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: bgColor,
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image.asset(AppImages.logo,width: 200),
          const SizedBox(height: defaultPadding),
          const AnimatedLoadingText(),
        ])));
  }
}
