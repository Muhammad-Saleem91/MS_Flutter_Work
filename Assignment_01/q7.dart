import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a number to calculate its root:");
  num number = num.parse(stdin.readLineSync()!);

  num root = sqrt(number);
  root = num.parse(root.toStringAsFixed(2));

  print("Square Root of $number is $root..");
}
