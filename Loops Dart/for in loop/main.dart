import 'dart:io';

void main() {
  List students = [];
  for (var i = 0; i < 5; i++) {
    students.add(stdin.readLineSync());
  }

  for (var name in students) {
    print("[ $name ]");
  }
}
