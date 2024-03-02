import 'dart:io';
import 'dart:math';

void main() {
  print("Enter Number of terms: ");
  num Number = num.parse(stdin.readLineSync()!);

  findAllCube(Number);
}

findAllCube(Number) {
  for (var i = 1; i <= Number; i++) {
    print("Number is : $i and Cube of the $i is ${pow(i, 3)}");
  }
}
