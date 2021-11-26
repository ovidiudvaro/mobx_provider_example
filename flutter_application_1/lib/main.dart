import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/questions_screen.dart';
import 'package:flutter_application_1/home/result_screen.dart';
import 'package:flutter_application_1/landing/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Personality Test',
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/questions': (context) => const QuestionsScreen(),
        '/result': (context) => const ResultScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 60.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 40.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 12.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
