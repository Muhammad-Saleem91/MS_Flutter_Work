import 'dart:io';

void main() {
  int count = 5;

  // Step 1: Variable initialization
  // Step 2: Condition check => if statement is true then it will run the body of the loop
  // if false it will not go in the loop and run the statements after the loop body

  // After running the loop we will decrement or increment our counter variable
  for (var i = 0; i < count; i++) {
    print("Saleem");
  }

  for (var i = 0; i < count; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write("$j "); // to print on same line
    }
    print("");
  }
}
