import 'dart:io';

void main() {
  print("Enter First Number: ");
  num num1 = num.parse(stdin.readLineSync()!);

  print("Enter Second Number: ");
  num num2 = num.parse(stdin.readLineSync()!);

  print("Enter Third Number: ");
  num num3 = num.parse(stdin.readLineSync()!);
  //using ternary operators
  num greatestNumber = (num1 > num2)
      ? ((num1 > num3) ? num1 : num3)
      : ((num2 > num3) ? num2 : num3);

  num lowestNumber = (num1 < num2)
      ? ((num1 < num3) ? num1 : num3)
      : ((num2 < num3) ? num2 : num3);

  print("Greatest Number: $greatestNumber");
  print("Lowest Number: $lowestNumber");
}
