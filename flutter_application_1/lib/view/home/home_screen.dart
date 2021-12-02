import 'package:flutter/material.dart';
import 'package:flutter_application_1/store/quiz_store.dart';
import 'package:flutter_application_1/view/home/questions_screen.dart';
import 'package:flutter_application_1/view/home/result_screen.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final quizStore = context.watch<QuizStore>();
    return Scaffold(
      body: Container(
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
          child: FutureBuilder(
            builder: (BuildContext context,
                AsyncSnapshot<List<Map<String, Object>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(
                  color: Colors.white,
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return TextButton(
                    onPressed: () => setState(() {}),
                    child: Text(
                      'Error',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  );
                } else if (snapshot.hasData) {
                  return Observer(
                    builder: (_) {
                      return quizStore.questionIndex < snapshot.data!.length
                          ? QuestionsScreen(
                              answerQuestion: quizStore.answerQuestion,
                              questionIndex: quizStore.questionIndex,
                              questions: snapshot.data!,
                            )
                          : ResultScreen(
                              quizStore.totalScore, quizStore.resetQuiz);
                    },
                  );
                } else {
                  return TextButton(
                    onPressed: () => setState(() {}),
                    child: Text(
                      'Empty data',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  );
                }
              } else {
                return TextButton(
                  onPressed: () => setState(() {}),
                  child: Text(
                    'State: ${snapshot.connectionState}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                );
              }
            },
            future: quizStore.fetchQuestions(),
          ),
        ),
      ),
    );
  }
}
