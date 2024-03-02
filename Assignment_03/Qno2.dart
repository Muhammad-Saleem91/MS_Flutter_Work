import 'dart:io';


void main() {
  List<String> days = List.empty(growable: true);
  for (var i = 0; i < 7; i++) {
    print("Enter Day: ");
    days.add(stdin.readLineSync()!);
  }

  print("Name of Week Days: $days");
}
