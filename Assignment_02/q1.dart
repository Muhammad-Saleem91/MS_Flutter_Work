import 'dart:io';

// user input syntax datatype? name = stdin.readLineSync();
// for other than String data type we use parse function for it
//for int input
// int? n = int.parse(stdin.readLineSync()!);
// Here ? and ! are for null safety
void main() {
  print("Enter Length and Breadth: ");

  int length = int.parse(stdin.readLineSync()!);

  int breadth = int.parse(stdin.readLineSync()!);

  print("Length: $length   :  Breadth: $breadth");

  if (breadth == length) {
    print("It's Square!");
  } else {
    print("It's Rectangle!");
  }
}
