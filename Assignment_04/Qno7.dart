import 'dart:io';

void main() {
  print("Enter Table Number: ");
  num TableNo = num.parse(stdin.readLineSync()!);

  printTable(TableNo);
}

printTable(num Num)
{
  for (var i = 1; i <= 10; i++) {
    print("$Num x $i = ${Num * i}");
  }
}
