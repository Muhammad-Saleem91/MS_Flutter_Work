import 'dart:io';

void main() {
  int Number = int.parse(stdin.readLineSync()!);
  factorial(Number);
}

factorial(int number) {
  int fact = 1;
  while (number > 0) {
    fact = fact * number--;
  }

  print(fact);
}
