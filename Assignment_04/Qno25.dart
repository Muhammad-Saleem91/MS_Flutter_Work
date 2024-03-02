import 'dart:io';

void main() {
  List IntegerList = inputList();

  filterPrimeNumbers(IntegerList);
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

filterPrimeNumbers(List Numbers) {
  
  List PrimeNumbers = List.empty(growable: true);
  for (var i = 0; i < Numbers.length; i++) {
    num Count = 0;
    bool isPrimeNo = false;
    for (var j = 1; j <= Numbers[i]; j++) {
      if (Numbers[i] % j == 0) {
        Count++;
      }
    }

    if (Count == 2) {
      isPrimeNo = true;
    }

    if (isPrimeNo) {
      PrimeNumbers.add(Numbers[i]);
    }
  }

  print(PrimeNumbers);
}
