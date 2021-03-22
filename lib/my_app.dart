import 'dart:math';

const int TRAIALS = 1000000;
int correct = 0;
Random ran = Random();
int randDoor;
int guess;
int eliminated;
dynamic mollyDoor() {
  for (var i = 0; i < TRAIALS; i++) {
    randDoor = ran.nextInt(3) + 1; //random door 1 to 3
    guess = 1; // guess door 1
    if (randDoor == 2) {
      eliminated = 3; // door 3 eliminated
    } else if (randDoor == 3) {
      eliminated = 2; // door 2 eliminated
    } else {
      eliminated = ran.nextInt(2) + 2; // door 2 or 3 randomly eliminated
    }
    if (eliminated == 2) {
      guess = 3; //switch our guess to door 3
    } else if (eliminated == 3) {
      guess = 2; //switch our guess to door 2
    }
    if (guess == randDoor) {
      correct++;
    }
  }
  print('The precentage of correct guesses was ${(correct / TRAIALS) * 100}%');
}
