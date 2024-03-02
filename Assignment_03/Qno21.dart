void main() {
  Map User = {
    "name": "Muhammad Saleem",
    "isAdmin": true,
    "isActive": true,
  };

  if (User["isAdmin"] && User["isActive"]) {
    print("Active Admin");
  }
  else{
    print("Not an Active Admin");
  }
}
