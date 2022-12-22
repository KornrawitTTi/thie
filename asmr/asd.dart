import 'dart:io';
import 'dart:math';

import 'package:asmr/nnn.dart';

void main () {
  var game = n();
  guessresult? guessResult;
  print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
  print("    GAME START 🎮    ");
  print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
  var r = Random();
  var ans = r.nextInt(100) + 1;

  for (int i = 0;; i++) {
    stdout.write('👾 Guess the number between 1 - 100 : ');

    var input = stdin.readLineSync();
    if (input == null) {
      return;
    }
    var guess = int.tryParse(input);
    guessResult = game.doguess(guess!);
    //print(guessResuldts);s11111111111111111111111111111
    if(guessResult == guessresult.correct){
      print(" $guess is coorrect,total guesses 🎁: ${n.myList.length}");
      print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
      print("      congratulation 🎁🎊   ");
      print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
      print("   PLAY AGAIN [ Y / N ] ");
      input = stdin.readLineSync();
      if(input == "N" || input == "n") {
        print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
        print("      สิ้นสุดทางเลื่อน 👋   ");
        print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
        break;
      }
      else{
        continue;
      }
    }
    else if(guessResult == guessresult.tooHigh){
      print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
      print(" > $guess is Too HIGH  👻 ");
      print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
    }
    else{

      print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
      print(" > $guess is Too Low 👻  ");
      print("⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯");
    }
  }
}