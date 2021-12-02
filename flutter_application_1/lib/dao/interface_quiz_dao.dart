abstract class IQuizDao {
  Future<List<Map<String, Object>>> fetchQuestions();

  Future<String> fetchResult(int score);
}
