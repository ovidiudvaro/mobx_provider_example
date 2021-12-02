import 'package:flutter_application_1/dao/interface_quiz_dao.dart';
import 'package:flutter_application_1/utils/network_utils.dart';

class QuizDao implements IQuizDao {
  final NetworkUtils networkUtils;

  QuizDao({required this.networkUtils});

  @override
  Future<List<Map<String, Object>>> fetchQuestions() async {
    await Future.delayed(const Duration(seconds: 3));

    return networkUtils.buildQuizData();
  }

  @override
  Future<String> fetchResult(int score) async {
    await Future.delayed(const Duration(seconds: 3));

    return networkUtils.buildResultData(score);
  }
}
