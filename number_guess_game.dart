// A number guessing game program
import "dart:io";
import "dart:math";

// Function to generate random number 0-10
int genRandom() {
  int num = Random().nextInt(10);
  return num;
}

int prompt(promptText) {
  print(promptText);
  int answer = int.parse(stdin.readLineSync()!);
  return answer;
}

void main() {
  // Random number 0 - 10
  int randomNum = genRandom();
  int attempts = 0;

  print('Welcome to the Number Guessing Game!');
  print('Guess a number between 1 and 10.');

  // Loop
  bool correctGuess = false;
  while (!correctGuess) {
    // User guess
    int userGuess = prompt("Enter your guess: ");
    attempts++;

    if (userGuess == randomNum) {
      print(
          "Congratulations you guessed the number right in $attempts attempts");
      break;
    } else if (userGuess > randomNum) {
      print("Your guess is too high, try again!");
    } else {
      print("Your guess is too low, try again!");
    }
  }

  print("Thank you for playing the Number Guessing Game!");
}
