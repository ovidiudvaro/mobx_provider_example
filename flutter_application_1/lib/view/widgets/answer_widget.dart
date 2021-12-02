import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  AnswerWidget(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: OutlinedButton(
        style: outlineButtonStyle,
        child: Text(
          answerText,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        onPressed: () => selectHandler(),
      ),
    );
  }

  final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  ).copyWith(
    overlayColor: MaterialStateProperty.all<Color>(Colors.blue.shade800),
    side: MaterialStateProperty.resolveWith<BorderSide>(
      (Set<MaterialState> states) {
        return BorderSide(
          color: Colors.white,
          width: 2,
        );
      },
    ),
  );
}
