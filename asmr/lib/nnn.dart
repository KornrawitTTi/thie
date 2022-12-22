
import 'dart:math';

enum guessresult {
  correct,
  tooHigh,
  tooLow
}
class n  {
  var answer ;
  int totalGuesses = 0;
  static List<int> myList = [];

n () {
  answer = Random().nextInt(100) + 1;
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