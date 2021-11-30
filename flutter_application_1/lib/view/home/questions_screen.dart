import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/question.dart';
import 'package:flutter_application_1/store/quiz_store.dart';
import 'package:provider/provider.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

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
      child: FutureBuilder(
        builder: (context, listData) {
          if (listData.connectionState == ConnectionState.none &&
              listData.hasData == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
          // return ListView.builder(
          //   itemCount: 3,
          //   itemBuilder: (context, index) {
          //     Question question = listData.data[index];
          //     return ListTile(title: Text(question.question));
          //   },
          // );
        },
        future: quizStore.quizData,
      ),
    );
  }
}
