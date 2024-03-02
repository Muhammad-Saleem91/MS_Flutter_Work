import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  printNumberPyramid(num);
}

printNumberPyramid(int n) {
  int count = 1;
  for (int i = 0; i < n; i++) {
    for (var j = n - i - 1; j > 0; j--) {
      stdout.write(" ");
    }

    for (var num = 0; num < i; num++) {
      stdout.write("$count ");
      count++;
    }
    print("");
  }
}
