import 'package:flutter_application_1/models/question.dart';

class NetworkUtils {
  static List<Question> buildQuizData() {
    return List<Question>.unmodifiable(
      [
        Question(
          question:
              'You’re really busy at work and a colleague is telling you their life story and personal woes. You:',
          answer1: 'Don’t dare to interrupt them',
          answer2:
              'Think it’s more important to give them some of your time; work can wait',
          answer3: 'Listen, but with only with half an ear',
          answer4:
              'Interrupt and explain that you are really busy at the moment',
        ),
        Question(
          question:
              'You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:',
          answer1: 'Look at your watch every two minutes',
          answer2: 'Bubble with inner anger, but keep quiet',
          answer3:
              'Explain to other equally impatient people in the room that the doctor is always running late',
          answer4:
              'Complain in a loud voice, while tapping your foot impatiently',
        ),
        Question(
          question:
              'You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:',
          answer1: 'Don’t dare contradict them',
          answer2: 'Think that they are obviously right',
          answer3: 'Defend your own point of view, tooth and nail',
          answer4: 'Continuously interrupt your colleague',
        ),
      ],
    );
  }
}
