import 'dart:io';

void main() {
  var Number = int.parse(stdin.readLineSync()!);
  printNumberPattern(Number);
}

printNumberPattern(Number) {
  for (var i = 1; i <= Number; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write("$i");
    }
    print("");
  }
}
