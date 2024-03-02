void main() {
  List st_names = ["bilal", "ahmed", "saleem"];

  print(st_names.isEmpty);

  print(st_names);

  //st_names.clear();

  var newList = st_names
      .reversed; // after reversing list and using this method it will be converted from list to String iterable

  print(newList);
  print(newList.toList());

  st_names.add("ashar"); // add method will work as insertLast
  // we will use add method to add single value

  // to add multple values we can use addall() method
  st_names.addAll(["ms", "ak"]);

  print(st_names);

  // if we want to add value at specific index and shift others

  st_names.insert(4, "SaleemAK");
  st_names.insertAll(5, ["ahmer", "kashif", "fahad"]);
  st_names.remove("ak"); // to remove by value

  st_names.removeAt(6); // to remove by index

  st_names.removeLast();
  
  print(st_names);
}
