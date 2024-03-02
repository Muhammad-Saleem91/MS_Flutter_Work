import 'dart:io';

void main() {
  print("Enter Any Word: ");
  String Word = stdin.readLineSync()!;
  checkVowelsCount(Word);
}

checkVowelsCount(String word) {
  List vowelsCapital = ['A', 'E', 'I', 'O', 'U'];

  List vowelsSmall = ['a', 'e', 'i', 'o', 'u'];

  int vowelCount = 0;

  for (var i = 0; i < vowelsCapital.length; i++) {
    if (word.contains(vowelsCapital[i]) || word.contains(vowelsSmall[i])) {
      vowelCount++;
    }
  }

  print("$word has $vowelCount vowels in it.");
}
