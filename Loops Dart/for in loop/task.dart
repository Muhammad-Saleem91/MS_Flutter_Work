import 'dart:io';

void main() {
  int size = 10;
  List numbers = [];

  for (var i = 0; i < size; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  print(numbers);

  for (var i = 0; i < size; i++) {
    if (i % 2 != 0) {
      print(numbers[i]);
    }
  }
}
