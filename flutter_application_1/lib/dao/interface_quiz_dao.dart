import 'package:flutter_application_1/models/question.dart';

abstract class IQuizDao {
  Future<List<Question>> fetchQuizData();

  String buildQuizResult({required int value});
}
