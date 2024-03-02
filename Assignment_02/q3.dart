import 'dart:io';

void main() {
  int held_classes, attended_classes;
  print("Total Number of Classes held:");
  held_classes = int.parse(stdin.readLineSync()!);

  print("Number of Classes attended by Student:");
  attended_classes = int.parse(stdin.readLineSync()!);

  double attendance_percent = (attended_classes / held_classes) * 100;

  attendance_percent = double.parse(attendance_percent.toStringAsFixed(2));

  print("Attendance of Student in Percentage: $attendance_percent");

  //criteria is Attendance should be greater than or equal to 75 % to sit in exam
  if (attendance_percent >= 75.0) {
    print("Student is Allowed to sit in Exam.");
  } else {
    print("Student is Not Allowed to sit in Exam.");
  }
}
