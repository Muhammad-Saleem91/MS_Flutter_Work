import 'dart:io';

void main() {
  int Numbers = int.parse(stdin.readLineSync()!);
  checkPrime(Numbers);
}

checkPrime(int number) {
  bool isPrimeNo = true;
  if (number % 1 == 0 && number % number == 0) {
    for (int i = 2; i < number / 2; i++) {
      if (number % i == 0) {
        isPrimeNo = false;
      }
    }

    print(isPrimeNo);
    String Result = isPrimeNo
        ? "$number is a Prime Number"
        : "$number is not a Prime Number";

    print(Result);
  }
}
