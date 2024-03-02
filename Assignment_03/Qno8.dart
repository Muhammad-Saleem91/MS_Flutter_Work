void main() {
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false}
  ];

  print("Before: $usersEligibility");

  //usersEligibility.removeWhere((check) => check["eligible"] == false);
  usersEligibility.retainWhere((check) => check["eligible"] == true);
  print("After: $usersEligibility");
}
