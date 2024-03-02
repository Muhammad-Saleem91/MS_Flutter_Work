void main() {
  Map Person = {
    'name': 'John',
    'age': 25,
    "isStudent": true,
  };

  if (Person["age"] > 18 && Person["isStudent"] == true) {
    print("Eligible");
  } else {
    print("Not Eligible");
  }
}
