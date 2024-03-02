import 'dart:io';

void main() {
  List Users_Credentials = [
    {
      "email": "m.saleemyameen.91@gmail.com",
      "password": "ms1991",
    },
    {
      "email": "m.saleem@gmail.com",
      "password": "ms1234",
    },
    {
      "email": "m.s.91@gmail.com",
      "password": "ms_91",
    },
    {
      "email": "ak_ms.@gmail.com",
      "password": "ak_1991",
    },
  ];
  Login(Users_Credentials);

  
}

Login(List userCredentials) {
  print("========== Login ==========");

  while (true) {
    print("Enter Email:");
    String email = stdin.readLineSync()!;

    print("Enter password: ");
    String password = stdin.readLineSync()!;

    bool isCredentialsValid = false;

    for (var i = 0; i < userCredentials.length; i++) {
      if (userCredentials[i]["email"] == email &&
          userCredentials[i]["password"] == password) {
        isCredentialsValid = true;
        break;
      }
    }

    if (isCredentialsValid) {
      print("=== User Login Successfull! ===");
      break;
    } else {
      print("Invalid Credentials.. Try Again: ");
    }
  }
}
