import 'dart:io';

void main() {
  List<int> Numbers = List.empty(growable: true);

  for (var i = 0; i < 8; i++) {
    print("Enter Number: ");
    Numbers.add(int.parse(stdin.readLineSync()!));
  }

  FilterOdd(Numbers);
}

FilterOdd(List list) {
  List EvenNumbers = list.where((num) => num.isEven).toList();

  print("Integers List : $list");

  print("Even Numbers List : $EvenNumbers");
}
