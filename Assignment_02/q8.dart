import 'dart:io';

void main() {
  num dsa_marks,
      coal_marks,
      discrete_marks,
      calculus_marks,
      pp_marks,
      total_marks_obtained = 0,
      percentage;

  num Total_marks = 150;

  var Grade;
  print("Enter Student's Name: ");
  String st_name = stdin.readLineSync()!;

  print("Enter Student's Roll Number: ");
  String st_rollno = stdin.readLineSync()!;

  print("Enter Class of the Student: ");
  String st_class = stdin.readLineSync()!;

  print("Enter Marks of DSA:");
  dsa_marks = num.parse(stdin.readLineSync()!);
  total_marks_obtained += dsa_marks;

  print("Enter Marks of COAL:");
  coal_marks = num.parse(stdin.readLineSync()!);
  total_marks_obtained += coal_marks;

  print("Enter Marks of Discrete Structures:");
  discrete_marks = num.parse(stdin.readLineSync()!);
  total_marks_obtained += discrete_marks;

  print("Enter Marks of Multivariate Calculus:");
  calculus_marks = num.parse(stdin.readLineSync()!);
  total_marks_obtained += calculus_marks;

  print("Enter Marks of Professional Practices:");
  pp_marks = num.parse(stdin.readLineSync()!);
  total_marks_obtained += pp_marks;

  percentage = (total_marks_obtained / Total_marks) * 100;

  percentage = num.parse(percentage.toStringAsFixed(2));

  if (percentage > 100) {
    print("Invalid Marks and Percentage!");
  } else if (percentage >= 90 && percentage <= 100) {
    Grade = "A-one";
  } else if (percentage >= 80 && percentage < 90) {
    Grade = "A";
  } else if (percentage >= 70 && percentage < 80) {
    Grade = "B";
  } else if (percentage >= 60 && percentage < 70) {
    Grade = "C";
  } else if (percentage >= 50 && percentage < 60) {
    Grade = "D";
  } else {
    Grade = "F";
  }

  printMarksheet(st_name, st_rollno, st_class, percentage, Grade);
}

void printMarksheet(
    String name, String rollno, String Class, num percent, var Grade) {
  print("===========Student Marksheet=============");

  print("Student's Name: $name");
  print("Student's Roll Number: $rollno");
  print("Student's Class: $Class");
  print("Student's Percentage: $percent");
  print("Student's Obtained Grade: $Grade");

  print("================THANKYOU===================");
}
//total marks of each subject is 30 marks.