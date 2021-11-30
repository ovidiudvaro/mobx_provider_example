import 'package:flutter_application_1/dao/interface_quiz_dao.dart';
import 'package:flutter_application_1/models/question.dart';
import 'package:flutter_application_1/utils/network_utils.dart';

class QuizDao implements IQuizDao {
  @override
  Future<List<Question>> fetchQuizData() {
    return Future.delayed(
      const Duration(milliseconds: 5),
      () => NetworkUtils.buildQuizData(),
    );
  }

  @override
  String buildQuizResult({required int value}) {
    if (value < 8) {
      return 'Introvert';
    }
    return 'Extrovert';
  }
}
