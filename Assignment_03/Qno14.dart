import 'dart:io';

void main() {
  List<int> Numbers = List.empty(growable: true);

  for (var i = 0; i < 8; i++) {
    print("Enter Number: ");
    Numbers.add(int.parse(stdin.readLineSync()!));
  }

  SortList(Numbers);
}

void SortList(List list) {
  List sortedList = List.of(list);

  sortedList.sort();

  print("Original List : $list");

  print("List Sorted in Ascending Order : $sortedList");
}
