import 'dart:io';

void main() {
  print("Enter any Alphabet: ");
  String alphabet = stdin.readLineSync()!;
  String alpha = alphabet.toLowerCase();

  if (alpha[0] == "a" ||
      alpha[0] == "e" ||
      alpha[0] == "i" ||
      alpha[0] == "o" ||
      alpha[0] == "u") {
    print(alphabet[0] + " is a vowel..");
  } else {
    print(alphabet[0] + " is a consonant..");
  }
}
