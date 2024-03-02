import 'dart:io';

void main() {
  List<int> Numbers = List.empty(growable: true);

  for (var i = 0; i < 8; i++) {
    print("Enter Number: ");
    Numbers.add(int.parse(stdin.readLineSync()!));
  }

  FilterNegative(Numbers);
}

FilterNegative(List list) {
  List PositiveNumbers = list.where((number) => number > 0).toList();

  print("Integers List : $list");

  print("Positive Integers List : $PositiveNumbers");
  
}
