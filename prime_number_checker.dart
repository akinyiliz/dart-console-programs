// A prime number is a positive integer greater than 1 that has no divisors other than 1 and itself.

import "dart:io";
import "dart:math";

int prompt(String promptText) {
  print(promptText);
  int answer = int.parse(stdin.readLineSync()!);
  return answer;
}

void main() {
  int userNumber = prompt("Enter number to check: ");

  if (userNumber == 1) {
    print("$userNumber is not prime number");
  } else {
    bool isPrime = true;
    for (int i = 2; i <= sqrt(userNumber); i++) {
      if (userNumber % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print("$userNumber is a prime number");
    } else {
      print("$userNumber is not prime number");
    }
  }
}
