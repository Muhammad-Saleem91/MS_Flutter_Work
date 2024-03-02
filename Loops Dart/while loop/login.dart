import 'dart:io';

void main() {
  String userEmail = "ms@gmail.com";
  String userPassword = "abc123";

  while (true) {
    print("Enter Email: ");
    String email = stdin.readLineSync()!;

    print("Enter Password: ");
    String pass = stdin.readLineSync()!;

    if (email == userEmail && pass == userPassword) {
      print("Login Successful");
      break;
    } else {
      print("Invalid email or password ! Enter Email and Password again !");
    }
  }
}
