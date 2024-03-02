void main() {
  Map <String , String> Name  = {};
  Map<String, int> numbers = {"DSA": 29, "PP": 23, "COAL": 25};
  Name.addAll({"cs221113": "Muhammad Saleem", "cs221112": "Aarish"});

  print(Name);
  print(numbers);

  print(Name.runtimeType);
  print(numbers.runtimeType);

  Name.removeWhere((key, value) => value.startsWith("Aa"));
  numbers.removeWhere((key, value) => value.isEven);
  print(numbers);
  print(Name);
  // remove method works on the basis of key

  // remove where iterates complete map and remove item on the basis of condition we have given
}
