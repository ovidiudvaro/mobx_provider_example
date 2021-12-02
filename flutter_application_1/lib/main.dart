import 'package:flutter/material.dart';
import 'package:flutter_application_1/dao/quiz_dao.dart';
import 'package:flutter_application_1/store/quiz_store.dart';
import 'package:flutter_application_1/utils/network_utils.dart';
import 'package:flutter_application_1/utils/routes_manager.dart';
import 'package:flutter_application_1/view/home/home_screen.dart';
import 'package:flutter_application_1/view/landing/landing_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<QuizStore>(
          create: (_) => QuizStore(
            quizDao: QuizDao(
              networkUtils: NetworkUtils(),
            ),
          ),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Personality Quiz',
      initialRoute: RoutesManager.LANDING_SCREEN_ROUTE,
      routes: {
        RoutesManager.LANDING_SCREEN_ROUTE: (context) => const LandingScreen(),
        RoutesManager.HOME_SCREEN_ROUTE: (context) => HomeScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
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
            fontSize: 15.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
