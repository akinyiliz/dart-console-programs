// A program that converts temperatures between Celsius and Fahrenheit based on user input.

import "dart:io";

double tempPrompt(promptText) {
  print(promptText);
  double answer = double.parse(stdin.readLineSync()!);
  return answer;
}

int conversionTypePrompt() {
  print("Choose conversion type(1 or 2): ");
  print("1. Celsius to Fahrenheit. 2. Fahrenheit to Celsius");
  int answer = int.parse(stdin.readLineSync()!);
  return answer;
}

void main() {
  double temp = tempPrompt("Enter temperature to convert: ");

  int userSelection = conversionTypePrompt();

  double convertedTemp;
  if (userSelection == 1) {
    convertedTemp = ((temp * 9 / 5) + 32);

    print("$temp°C = $convertedTemp°F");
  } else if (userSelection == 2) {
    convertedTemp = (temp - 32) * 5 / 9;

    print("$temp°F = $convertedTemp°C");
  } else {
    print("Invalid option");
  }
}
