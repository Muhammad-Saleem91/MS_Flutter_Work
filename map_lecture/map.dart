void main() {
  // if we have curly brackets {} means it is maps
  // maps has two things key and value
  // key is basically the id or address of value it will always be unique like id card no

  // Syntax of Map is "key" : "value" , "newkey" : "value2"
  // value data type can be dynamic it can be list , string etc or it can be of one datatype and key can be dynamic or can be of one data type
  Map<String, dynamic> StudentInfo = {
    "name": "Muhammad Saleem",
    "Roll No": 221113,
    "Section": "CS-3A",
    "Courses": ["DSA", "COAL", "PP"],
  };

  print(StudentInfo.values);
  print(StudentInfo.keys);
  print(StudentInfo.length);

  print(StudentInfo["name"]);
  StudentInfo["Courses"] = ["DSA", "COAL", "PP", "MVC"];
  //StudentInfo["Marks"] = [28, 29, 20, 23];// to add

  StudentInfo.putIfAbsent("Marks", () => [28, 29, 20, 23]); // to add

  print(StudentInfo);
}
