void main() {
  List Numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List EvenList = Numbers.where((number) => number % 2 == 0).toList();

  List OddList = Numbers.where((number) => number % 2 != 0).toList();

  print("Even List : $EvenList");

  print("Odd List : $OddList");

}
