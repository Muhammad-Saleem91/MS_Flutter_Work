import 'dart:io';

void main() {
  print("Enter any Alphabet: ");
  String alphabet = stdin.readLineSync()!;

  if (alphabet[0] == "a" ||
      alphabet[0] == "e" ||
      alphabet[0] == "i" ||
      alphabet[0] == "o" ||
      alphabet[0] == "u") {
    print(alphabet[0] + " is a vowel..");
  } else {
    print(alphabet[0] + " is a consonant..");
  }
}
