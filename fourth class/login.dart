import 'dart:io';

void main() {
  var email = 'abc@gmail.com';
  var password = 'ms1991';

  print("Enter Email:");
  String? userEmail = stdin.readLineSync();

  print("Enter Password:");
  String? pass = stdin.readLineSync();
  
  if ( email == userEmail && password == pass) {
    print('Login Successfull !');
  } else {
    print('Login Failed!');
  }
}
