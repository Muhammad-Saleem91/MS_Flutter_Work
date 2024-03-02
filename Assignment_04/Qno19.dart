import 'dart:io';

void main() {
  printList();
}

printList() {
  List Numbers = List.empty(growable: true);
  print("Enter Numbers of Elements in a List: ");
  num size_of_list = num.parse(stdin.readLineSync()!);

  for (var i = 0; i < size_of_list; i++) {
    Numbers.add(num.parse(stdin.readLineSync()!));
  }

  print(Numbers);

  stdout.write("Numbers Greater than 5 : ");

  for (var i = 0; i < size_of_list; i++) {
    if (Numbers[i] > 5) {
      stdout.write("${Numbers[i]} ");
    }
  }
}
