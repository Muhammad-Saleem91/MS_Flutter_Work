import 'dart:io';

void main() {
  print("Enter Word: ");
  String Word1 = stdin.readLineSync()!;

  checkPalindrome(Word1);

  print("Enter Word: ");
  String Word2 = stdin.readLineSync()!;

  CheckPalindrome(Word2);
}

checkPalindrome(String word) {
  dynamic Order = word.split('');

  Order = Order.reversed;

  String Reversed = Order.join();

  print(Reversed);

  bool isPalindrome = word.toUpperCase() == Reversed.toUpperCase();

  if (isPalindrome) {
    print("$word is a Palindrome.");
  } else {
    print("$word is not a Palindrome.");
  }
}

CheckPalindrome(String Word) {
  var WordList = Word.split('');

  String Reversed = "";

  for (int i = WordList.length - 1; i >= 0; i--) {
    Reversed = Reversed + WordList[i];
  }

  bool isPalindrome = Word.toUpperCase() == Reversed.toUpperCase();

  if (isPalindrome) {
    print("$Word is a Palindrome.");
  } else {
    print("$Word is not a Palindrome.");
  }
}
