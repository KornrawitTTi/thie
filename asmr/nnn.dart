
import 'dart:math';

enum guessresult {
  correct,
  tooHigh,
  tooLow
}
class n  {
  final int answer = Random().nextInt(100) + 1;
  int totalGuesses = 0;
  static List<int> myList = [];

n () {
  print('Answer = $answer');
}
  guessresult doguess(int guess) {
    myList.add(totalGuesses++);
    if (guess == answer) {
      return guessresult.correct;
    } else if (guess > answer) {
      return guessresult.tooHigh;
    } else {
      return guessresult.tooLow;
    }
  }
}