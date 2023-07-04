// Fibonacci series is a series of number where the next number is the sum of the preceding two numbers.
// First and second terms are 0 and 1 respectively.

import "dart:io";

int prompt(String promptText) {
  print(promptText);
  int answer = int.parse(stdin.readLineSync()!);
  return answer;
}

void main() {
  int term1 = 0;
  int term2 = 1;

  int numberOfPrompts = prompt("Enter desired number or terms: ");

  List<int> fibonacci = [term1, term2];

// Loop
  for (int i = 0; i < numberOfPrompts; i++) {
    int nextTerm = term1 + term2;
    term1 = term2;
    term2 = nextTerm;

    // Store the calculated term in a list for later display.
    fibonacci.add(nextTerm);
  }

  print(fibonacci);
}
