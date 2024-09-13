import 'package:adnan_ashraf_portfolio/config/app_theme.dart';
import 'package:flutter/material.dart';
import '../view/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:primaryTheme(context),
      home: const SplashView()
    );
  }
}


