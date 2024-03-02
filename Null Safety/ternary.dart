void main() {
  int marks = 96;
  String result = (marks > 50) ? "Pass" : "Fail";
  print(result);

  //trying to use null check here

  int? number = 7;

  int newNumber = (number != null) ? number : 0;

  print(newNumber);

  

}
