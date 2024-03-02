import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  printNumberPyramid(num);
}

printNumberPyramid(int n) {
  
  for (int i = 1; i <= n; i++) {
    for (var j = n - i - 1; j >= 0; j--) {
      stdout.write(" ");
    }

    for (var num = 1; num <= i; num++) {
      stdout.write("* ");
      
    }
    print("");
  }
}
