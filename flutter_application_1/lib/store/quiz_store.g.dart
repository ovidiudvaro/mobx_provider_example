// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuizStore on _QuizStore, Store {
  final _$questionIndexAtom = Atom(name: '_QuizStore.questionIndex');

  @override
  int get questionIndex {
    _$questionIndexAtom.reportRead();
    return super.questionIndex;
  }

  @override
  set questionIndex(int value) {
    _$questionIndexAtom.reportWrite(value, super.questionIndex, () {
      super.questionIndex = value;
    });
  }

  final _$totalScoreAtom = Atom(name: '_QuizStore.totalScore');

  @override
  int get totalScore {
    _$totalScoreAtom.reportRead();
    return super.totalScore;
  }

  @override
  set totalScore(int value) {
    _$totalScoreAtom.reportWrite(value, super.totalScore, () {
      super.totalScore = value;
    });
  }

  final _$_QuizStoreActionController = ActionController(name: '_QuizStore');

  @override
  void answerQuestion(int score, List<Map<String, Object>> questions) {
    final _$actionInfo = _$_QuizStoreActionController.startAction(
        name: '_QuizStore.answerQuestion');
    try {
      return super.answerQuestion(score, questions);
    } finally {
      _$_QuizStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetQuiz() {
    final _$actionInfo =
        _$_QuizStoreActionController.startAction(name: '_QuizStore.resetQuiz');
    try {
      return super.resetQuiz();
    } finally {
      _$_QuizStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
questionIndex: ${questionIndex},
totalScore: ${totalScore}
    ''';
  }
}
