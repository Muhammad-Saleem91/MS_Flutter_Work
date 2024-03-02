void main() {
  List<String> myListWithDuplicates = [
    'apple',
    'banana',
    'orange',
    'apple',
    'grape',
    'banana',
    'kiwi'
  ];

  print("Original List: $myListWithDuplicates");

  List NoDuplicatesList = removeDuplicates(myListWithDuplicates);
  print("\nList without duplicates: $NoDuplicatesList\n");

}

removeDuplicates(List ListWithDuplicates) {
  // Set.of() method is used to remove the duplicates from the data

  return Set.of(ListWithDuplicates).toList();
}
