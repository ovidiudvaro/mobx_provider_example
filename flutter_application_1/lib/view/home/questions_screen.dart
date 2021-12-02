import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widgets/answer_widget.dart';
import 'package:flutter_application_1/view/widgets/question_widget.dart';

class QuestionsScreen extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  QuestionsScreen({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionWidget(
            questionText: questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
            (answer) {
              return AnswerWidget(
                () => answerQuestion(answer['score'], questions),
                answer['text'] as String,
              );
            },
          ).toList()
        ],
      )),
    );
  }
}
