import 'dart:io';

void main() {
  List IntegersList = inputList();
  AverageNegativeNumbers(IntegersList);
}

inputList() {
  List list = List.empty(growable: true);

  print("Enter Numbers of Elements in a List: ");
  num size_of_list = num.parse(stdin.readLineSync()!);

  for (var i = 0; i < size_of_list; i++) {
    print("Enter Number: ");
    list.add(num.parse(stdin.readLineSync()!));
  }

  return list;
}

AverageNegativeNumbers(List Numbers) {
  num Average = 0, NegativeCount = 0;

  for (var i = 0; i < Numbers.length; i++) {
    if (Numbers[i] < 0) {
      Average += Numbers[i];
      NegativeCount++;
    }
  }

  Average /= NegativeCount;

  print("Average of All Negative Numbers in a List : $Average");
}
