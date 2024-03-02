import 'dart:io';

void main() {
  print("Enter Temperature in Celcius: ");
  num temp_in_celcius = num.parse(stdin.readLineSync()!);

  num temp_in_farhenheit = (temp_in_celcius * (9 / 5)) + 32;
  print("Converting Celcius into Farhenheit!!\n");
  temp_in_farhenheit = num.parse(temp_in_farhenheit.toStringAsFixed(2));

  print("Temperature in Celcius: $temp_in_celcius");
  print("Temperature in Farhenheit: $temp_in_farhenheit");
}
