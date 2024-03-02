import 'dart:io';

void main() {
  num maximumValue = 0;
  List Integers = List.empty(growable: true);

  for (var i = 0; i < 5; i++) {
    print("Enter Number: ");
    Integers.add(num.parse(stdin.readLineSync()!));
  }

  
  maximumValue = maxValue(Integers);

  print("Maximum Value in $Integers : $maximumValue");
}

maxValue(List Numbers) {
  num maxValue = 0;

  for (var i = 0; i < Numbers.length; i++) {
    if (i == 0) {
      maxValue = Numbers[i];
    } else if (Numbers[i] > maxValue) {
      maxValue = Numbers[i];
    }
    
  }
  return maxValue;
}
