import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes_manager.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pushReplacementNamed(
          context,
          RoutesManager.HOME_SCREEN_ROUTE,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blue.shade800,
                Colors.blue.shade400,
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Tap to start',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
