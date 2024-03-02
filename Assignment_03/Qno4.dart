import 'dart:io';

void main() {
  List numbers = List.empty(growable: true);

  for (var i = 0; i < 5; i++) {
    print("Enter Number: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  numbers.sort();
  int smallest = numbers.first;
  int largest = numbers.last;

  print("Smallest Number : $smallest");
  print("Largest Number : $largest");
}
