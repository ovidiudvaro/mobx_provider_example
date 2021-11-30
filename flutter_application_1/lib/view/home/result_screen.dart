import 'package:flutter/material.dart';
import 'package:flutter_application_1/store/quiz_store.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quizStore = context.watch<QuizStore>();
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
          '${quizStore.quizResult}',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
