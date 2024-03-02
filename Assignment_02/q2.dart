import 'dart:io';

void main() {
  var age, age2, name, name2;

  print("Enter Your Name and Age: ");
  name = stdin.readLineSync();
  age = int.parse(stdin.readLineSync()!);

  print("Enter Your Name and Age: ");
  name2 = stdin.readLineSync();
  age2 = int.parse(stdin.readLineSync()!);

  if (age > age2) {
    print("$name is oldest: $age years and $name2 is youngest: $age2 years.");
  }

  else if(age2 > age){
    print("$name2 is oldest: $age2 years and $name is youngest: $age years.");
  }

  else{
    print("$name's and $name2's ages are same: $age years.");
  }
}
