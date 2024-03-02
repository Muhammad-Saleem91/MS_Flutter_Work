import 'dart:io';

void main() {
  String actualEmail = 'm.saleemyameen.91@gmail.com';
  String actualPass = 'ms1991';

  print("Enter Email:");
  String email = stdin.readLineSync()!;

  print("Enter Password:");
  String password = stdin.readLineSync()!;

  if (email == actualEmail && password == actualPass) {
    print("Login Successfull");
  } else if (email == actualEmail && password != actualPass) {
    print("Incorrect Password !");
  } else if (email != actualEmail && password == actualPass) {
    print("Incorrect Email !");
  } else {
    print("You have entered incorrect Email and Password! ");
  }
}
