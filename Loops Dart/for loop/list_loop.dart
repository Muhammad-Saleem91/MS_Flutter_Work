import 'dart:io';

void main() {
  print("Enter Size of the List: ");
  int size = int.parse(stdin.readLineSync()!);
  List names = [];
  for (var i = 0; i < size; i++) {
    String input = stdin.readLineSync()!;
    names.add(input);
  }

  for (var i = 0; i < names.length; i++) {
    stdout.write(names[i]);
    stdout.write(" ");
  }
}
