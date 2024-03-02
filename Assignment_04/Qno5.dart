import 'dart:io';

void main() {
  int Number, Sum;

  print("Enter Number: ");
  Number = int.parse(stdin.readLineSync()!);

  Sum = sumofAllDigits(Number);

  print("Sum of All digits of a $Number is : $Sum.");
}

sumofAllDigits(int number) {
  int Sum = 0, digit;

  while (number != 0) {
    digit = number % 10;
    number = number ~/ 10;
    Sum = Sum + digit;
  }

  return Sum;
}
