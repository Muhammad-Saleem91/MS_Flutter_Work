import 'dart:io';

void main() {
  List<int> Numbers = List.empty(growable: true);

  for (var i = 0; i < 8; i++) {
    print("Enter Number: ");
    Numbers.add(int.parse(stdin.readLineSync()!));
  }

  SquaredNumbers(Numbers);
}

SquaredNumbers(List list)
{
  List squaredList = list.map((Number) => Number * Number).toList();

  print("Original List: $list");
  print("Squared List: $squaredList");
}
