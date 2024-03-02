// remove methods
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numbers.remove(8);
  numbers.removeAt(5);
  numbers.removeWhere((num) => num < 3);
  print(numbers);

  List st_id = [54, 87, 67, 90, 34, 76];
  print(st_id);
  st_id.removeWhere((element) => element < 70);

  print(st_id);

  // retainWhere() will work as it will check every value and check condition if
  //condition is true it will only retain that value otherwise remove other elements

  numbers.retainWhere((element) => element < 6);
  print(numbers);

  // to check the type of any list or variable
  print(st_id.runtimeType);
  print(numbers.runtimeType);
}
