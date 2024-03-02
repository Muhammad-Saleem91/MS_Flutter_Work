import 'dart:io';

void main() {
  Login();
}

Login() {
  String userEmail = "m.saleem@gmail.com";
  String userPassword = "ms1991";

  print("========== Login ==========");

  while (true) {
    print("Enter Email:");
    String email = stdin.readLineSync()!;

    print("Enter password: ");
    String password = stdin.readLineSync()!;

    if (userEmail == email && userPassword == password) {
      print("=== User Login Successfull! ===");
      break;
    } else {
      print("Invalid Credentials.. Try Again: ");
    }
  }
}
