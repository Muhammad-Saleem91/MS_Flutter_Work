import 'dart:io';
import 'dart:math';

void main() {
  List Numbers = inputList();
  num SumofOddSquares = findOddNumbers_AndSum(Numbers);

  print("Numbers List : $Numbers");
  print("Sum of All Odd Numbers Squares in a List : $SumofOddSquares");
}

inputList() {
  List list = List.empty(growable: true);

  print("Enter Numbers of Elements in a List: ");
  num size_of_list = num.parse(stdin.readLineSync()!);

  for (var i = 0; i < size_of_list; i++) {
    print("Enter Number: ");
    list.add(num.parse(stdin.readLineSync()!));
  }

  return list;
}

findOddNumbers_AndSum(List Numbers) {
  List oddNumbers = List.empty(growable: true);
  num Sum = 0;

  for (var i = 0; i < Numbers.length; i++) {
    if (Numbers[i] % 2 == 1) {
      oddNumbers.add(Numbers[i]);

      Sum = Sum + pow(Numbers[i], 2);
    }
  }

  return Sum;
}
