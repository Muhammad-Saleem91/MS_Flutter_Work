import 'dart:io';

void main() {
  print("Enter Table No:");
  int tableNo = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= 10; i++) {
    
    print("$tableNo x $i = ${tableNo*i}");
  }
}
