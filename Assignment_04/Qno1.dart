import 'dart:io';

void main() {
  List Numbers = List.empty(growable: true);

  for (var i = 0; i < 10; i++) {
    print("Enter Number: ");
    Numbers.add(num.parse(stdin.readLineSync()!));
  }

  EvenNumbers(Numbers);
}

EvenNumbers(List list) {
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      stdout.write("${list[i]} ");
    }
  }
}
