import 'package:flutter_application_1/dao/interface_quiz_dao.dart';
import 'package:mobx/mobx.dart';

part 'quiz_store.g.dart';

class QuizStore = _QuizStore with _$QuizStore;

abstract class _QuizStore with Store {
  final IQuizDao quizDao;

  @observable
  int questionIndex = 0;

  @observable
  int totalScore = 0;

  _QuizStore({required this.quizDao});

  @action
  void answerQuestion(int score, List<Map<String, Object>> questions) {
    totalScore += score;
    questionIndex = questionIndex + 1;
  }

  @action
  void resetQuiz() {
    questionIndex = 0;
    totalScore = 0;
  }

  Future<List<Map<String, Object>>> fetchQuestions() async {
    return quizDao.fetchQuestions();
  }

  Future<String> fetchResult() {
    return quizDao.fetchResult(totalScore);
  }
}
