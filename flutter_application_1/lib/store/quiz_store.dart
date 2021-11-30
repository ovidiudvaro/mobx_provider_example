import 'package:flutter_application_1/dao/interface_quiz_dao.dart';
import 'package:flutter_application_1/models/question.dart';
import 'package:mobx/mobx.dart';

part 'quiz_store.g.dart';

class QuizStore = _QuizStore with _$QuizStore;

abstract class _QuizStore with Store {
  final IQuizDao quizDao;

  _QuizStore({required this.quizDao});

  @observable
  String quizResult = 'Calculating...';

  @observable
  Future<List<Question>>? quizData;

  @action
  void buildQuizResult(int value) {
    quizResult = quizDao.buildQuizResult(value: value);
  }

  @action
  void buildQuizData() {
    quizData = quizDao.fetchQuizData();
  }
}
