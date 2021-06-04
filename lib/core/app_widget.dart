import 'package:flutter/material.dart';
import 'package:DevQuiz/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "DevQuiz", home: SplashPage());
  }
}
