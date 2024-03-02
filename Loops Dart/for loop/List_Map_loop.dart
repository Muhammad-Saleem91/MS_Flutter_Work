void main() {
  List<Map> StudentInfo = [
    {"name": "Ahmed", "age": 20},
    {"name": "Ali", "age": 16},
    {"name": "Akram", "age": 18},
  ];

  for (var i = 0; i < StudentInfo.length; i++) {
    if (i < StudentInfo.length - 1) {
      print(StudentInfo[i]["name"]);
    }
    else{
      print(StudentInfo[i]["age"]);
    }
  }
}
