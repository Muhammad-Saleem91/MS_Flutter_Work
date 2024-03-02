import 'dart:io';

void main() {
  List Numbers = inputList();

  MaximumNumber(Numbers);
  MinimumNumber(Numbers);
}

inputList() {
  List list = List.empty(growable: true);

  print("Enter Numbers of Elements in a List: ");
  num size_of_list = num.parse(stdin.readLineSync()!);

  for (var i = 0; i < size_of_list; i++) {
    list.add(num.parse(stdin.readLineSync()!));
  }

  return list;
}

MaximumNumber(List Numbers) {
  int Max = Numbers[0];
  for (var i = 0; i < Numbers.length; i++) {
    if (Numbers[i] > Max) {
      Max = Numbers[i];
    }
  }

  print("Maximum Value in a Given List is : $Max");
}

MinimumNumber(List Numbers) {
  int Min = Numbers[0];
  for (var i = 0; i < Numbers.length; i++) {
    if (Numbers[i] < Min) {
      Min = Numbers[i];
    }
  }

  print("Minimum Value in a Given List is : $Min");
}
