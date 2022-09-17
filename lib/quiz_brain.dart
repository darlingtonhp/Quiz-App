import 'package:quiz/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
      "Winky D is the greatest artist in Zimbabwe",
      true,
    ),
    Question(
      "KPI stands for Key Performance Indicator",
      true,
    ),
    Question(
      "ASO stands for app store optimization.",
      true,
    ),
    Question("Buzz Aldrin's mother's maiden name was Moon.", true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called Backrub.', true),
    Question(
        "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.",
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question(
      "Peanuts are not nuts!",
      true,
    ),
    Question(
      "People may sneeze or cough while sleeping deeply.",
      false,
    ),
    Question(
      "Electrons move faster than the speed of light.",
      false,
    ),
    Question(
      "All introverts are shy and socially anxious.",
      false,
    ),
    Question(
      "Limited liability corporations (LLCs) combine the characteristics of a corporation and a partnership.",
      true,
    ),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question("A slug's blood is green.", true),
    Question(
      "SWOT analysis is a type of personality test used to screen job applicants.",
      false,
    ),
    Question(
      "The term inflation refers to a general fall in the prices of most products and services.",
      false,
    ),
    Question(
      "A credit card and a debit card are the same.",
      false,
    ),
    Question(
      "Ethereum is the second-largest cryptocurrency after Bitcoin.",
      true,
    ),
    Question(
      "There are tools to help you monitor your competitor’s marketing efforts.",
      true,
    ),
    Question(
      "Facebook is not as popular as it used to be, it’s losing its audiences.",
      false,
    ),
    Question(
      "Women usually reach the earning-peak of their career when they are younger than men.",
      true,
    ),
    Question(
      "Your employer is obligated to give you a raise every two years.",
      false,
    ),
    Question(
      "There are three rivers in Saudi Arabia.",
      false,
    ),
    Question(
      "The Great Wall of China is visible from space.",
      false,
    ),
    Question(
      "There are more ancient pyramids in Sudan than in Egypt.",
      true,
    ),
  ];

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
