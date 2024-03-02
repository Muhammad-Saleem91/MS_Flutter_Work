import 'dart:io';

void main() {
  print("Enter Number of Lines You want to print : ");
  var Lines = int.parse(stdin.readLineSync()!);
  printStarPattern(Lines);
}

printStarPattern(NoOfLines) {
  for (var i = 0; i < NoOfLines; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}
