import 'dart:io';

void main() {
  List<dynamic> info = [
    "Muhammad",
    "Saleem",
    "CS-",
    221113,
    3.86,
    "CS-3a",
    03001234567
  ];

  print("Enter number of Elements : [less than ${info.length}]");
  int n = int.parse(stdin.readLineSync()!);

  printListNtimes(n, info);
}

void printListNtimes(int n, List list) {
  if (n > list.length) {
    print("Invalid Input! Out of Bound");
    return;
  }
  List newList = List.empty(growable: true);
  for (var i = 0; i < n; i++) {
    newList.add(list[i]);
  }

  print("List with $n Elements : $newList");
}
