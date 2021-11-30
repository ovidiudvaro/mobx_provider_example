// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuizStore on _QuizStore, Store {
  final _$quizResultAtom = Atom(name: '_QuizStore.quizResult');

  @override
  String get quizResult {
    _$quizResultAtom.reportRead();
    return super.quizResult;
  }

  @override
  set quizResult(String value) {
    _$quizResultAtom.reportWrite(value, super.quizResult, () {
      super.quizResult = value;
    });
  }

  final _$quizDataAtom = Atom(name: '_QuizStore.quizData');

  @override
  Future<List<Question>>? get quizData {
    _$quizDataAtom.reportRead();
    return super.quizData;
  }

  @override
  set quizData(Future<List<Question>>? value) {
    _$quizDataAtom.reportWrite(value, super.quizData, () {
      super.quizData = value;
    });
  }

  final _$_QuizStoreActionController = ActionController(name: '_QuizStore');

  @override
  void buildQuizResult(int value) {
    final _$actionInfo = _$_QuizStoreActionController.startAction(
        name: '_QuizStore.buildQuizResult');
    try {
      return super.buildQuizResult(value);
    } finally {
      _$_QuizStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buildQuizData() {
    final _$actionInfo = _$_QuizStoreActionController.startAction(
        name: '_QuizStore.buildQuizData');
    try {
      return super.buildQuizData();
    } finally {
      _$_QuizStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quizResult: ${quizResult},
quizData: ${quizData}
    ''';
  }
}
