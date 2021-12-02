import 'package:flutter/material.dart';

class NetworkUtils {
  final int _introvert = 3;
  final int _extrovert = 12;

  List<Map<String, Object>> buildQuizData() {
    return [
      {
        'questionText':
            'Q1. You’re really busy at work and a colleague is telling you their life story and personal woes. You:',
        'answers': [
          {
            'text': 'Don’t dare to interrupt them',
            'score': 1,
          },
          {
            'text':
                'Think it’s more important to give them some of your time; work can wait',
            'score': 2
          },
          {
            'text': 'Listen, but with only with half an ear',
            'score': 3,
          },
          {
            'text':
                'Interrupt and explain that you are really busy at the moment',
            'score': 4
          },
        ],
      },
      {
        'questionText':
            'Q2. You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:',
        'answers': [
          {
            'text': 'Look at your watch every two minutes',
            'score': 1,
          },
          {
            'text': 'Bubble with inner anger, but keep quiet',
            'score': 2,
          },
          {
            'text':
                'Explain to other equally impatient people in the room that the doctor is always running late',
            'score': 3,
          },
          {
            'text':
                'Complain in a loud voice, while tapping your foot impatiently',
            'score': 4,
          },
        ],
      },
      {
        'questionText':
            ' Q3. You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:',
        'answers': [
          {
            'text': 'Don’t dare contradict them',
            'score': 1,
          },
          {
            'text': 'DaThink that they are obviously right',
            'score': 2,
          },
          {
            'text': 'Defend your own point of view, tooth and nail',
            'score': 3,
          },
          {
            'text': 'Continuously interrupt your colleague',
            'score': 4,
          },
        ],
      },
    ];
  }

  String buildResultData(int score) {
    debugPrint('buildResultData | score = $score');
    if (score == _introvert) {
      return 'INTROVERT';
    } else if (score > _introvert &&
        score <= ((_extrovert - _introvert) / 2 + _introvert)) {
      return 'Both, but more INTROVERT';
    } else if (score >= ((_extrovert - _introvert) / 2 + _introvert) &&
        score < _extrovert) {
      return 'Both, but more EXTROVERT';
    } else {
      return 'EXTROVERT';
    }
  }
}
