import 'dart:io';

void main() {
  int Numbers = int.parse(stdin.readLineSync()!);

  fibnonacciSequence(Numbers);
}

fibnonacciSequence(int number) {
  num term1 = 0, term2 = 1, Sequence = 0;

  for (var i = 0; Sequence <= number; i++) {
    stdout.write("$Sequence ");
    Sequence = term1 + term2;
    term2 = term1;
    term1 = Sequence;
    
  }
}
