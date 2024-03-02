import 'dart:io';

void main() {
  List<int> Numbers = List.empty(growable: true);

  for (var i = 0; i < 8; i++) {
    print("Enter Number: ");
    Numbers.add(int.parse(stdin.readLineSync()!));
  }

  List OnlyUniqueList = Set.of(Numbers).toList();

  print("Original List : $Numbers");

  print("Only Unique Elements List : $OnlyUniqueList");
}
