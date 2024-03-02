void main() {
  Map info = {
    "Ahmed": "0300 3456783",
    "Ali": "0345 1234567",
    "Saleem": "0321 8765432",
    "Farhan": "0333 9876543",
    "Zara": "0344 5678901",
    "Kamran": "0311 2345678"
  };

  List keysWith4 = info.keys.where((key) => key.length == 4).toList();
  print("Key with length 4 is : $keysWith4");
}
