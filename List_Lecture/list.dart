import 'dart:io';

void main() {
  //List<String> students = ["Saleem", "Bilal", "Ashir", "Fahad"];
  //print(students);

  /*if no data type given in list initialization 
  meaning dynamic list it will store any type of data String ,int etc
  for example : ["Saleem", "Bilal", "Ashir", "Fahad",2,5,6.6] like this 
  */
  // two ways to declare dynamic List
  //List<dynamic> anything = ["Saleem", "Bilal", "Ashir", "Fahad", 2, 5, 6.6];
  //List  anything = ["Saleem", "Bilal", "Ashir", "Fahad",2,5,6.6];

  List<String> name = List.empty(growable: true);
  print("Enter size of List: ");
  int size = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < size; i++) {
    print("Enter Name: ");
    String input = stdin.readLineSync()!;
    name.add(input);
  }

  print(name);
  name.sort();
  print(name);

  // updating last value of list
  name.replaceRange(name.length-1, name.length, ["bilal"]);
  print(name);

  //[Saleem, Ahmed, Saleem, Bilal, Ashir , Huzaifa]
  //print(name.indexOf("Saleem"));
  //print(name.lastIndexOf("Saleem"));
}
