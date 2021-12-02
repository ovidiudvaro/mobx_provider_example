import 'package:flutter/material.dart';
import 'package:flutter_application_1/store/quiz_store.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  ResultScreen(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    final quizStore = context.watch<QuizStore>();
    return Align(
      alignment: Alignment.center,
      child: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(
              color: Colors.white,
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text(
                'Error received. Please Restart the test.',
                style: Theme.of(context).textTheme.headline1,
              );
            } else if (snapshot.hasData) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      snapshot.data!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30, right: 30),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        child: Text(
                          'Restart',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onPressed: () => resetHandler(),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Text(
                'Empty data received. Please Restart the test.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              );
            }
          } else {
            return Text(
              'State: ${snapshot.connectionState}. Please Restart the test.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            );
          }
        },
        future: quizStore.fetchResult(),
      ),
    );
  }
}
