import 'dart:io';

void main() {
  num num1, num2, Result;
  print("Enter two Numbers for Arithmetic Operations : ");

  print("Enter Number 1: ");
  num1 = num.parse(stdin.readLineSync()!);

  print("Enter Number 2: ");
  num2 = num.parse(stdin.readLineSync()!);

  print("Enter Operation:");

  String Operator = stdin.readLineSync()!;

  Result = (Operator == "+")
      ? num1 + num2
      : (Operator == "*")
          ? num1 * num2
          : (Operator == "-")
              ? num1 - num2
              : (Operator == "/")
                  ? num1 / num2
                  : -1;

  print(
      "Result of Arithmetic Operation $Operator of $num1 and $num2 : $Result");
}
