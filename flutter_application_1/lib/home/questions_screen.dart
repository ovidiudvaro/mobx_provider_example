import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.blue.shade800,
            Colors.blue.shade100,
          ],
        ),
      ),
      child: Center(
        child: Text(
          'QuestionsScreen',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
