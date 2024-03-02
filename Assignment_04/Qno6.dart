import 'dart:io';

void main() {
  List Numbers = List.empty(growable: true);

  for (var i = 0; i < 10; i++) {
    print("Enter Number: ");
    Numbers.add(num.parse(stdin.readLineSync()!));
  }
  num LargestNo = largestNumber(Numbers);

  print("Largest Number in the List $Numbers is : $LargestNo ");
}

largestNumber(List list) {
  num LargestNo = 0;

  for (var i = 0; i < list.length; i++) {
    if (list[i] > LargestNo) {
      LargestNo = list[i];
    }
  }

  return LargestNo;
}
