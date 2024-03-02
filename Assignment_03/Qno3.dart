void main() {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  for (var i = 0; i < 7; i++) {
    print("Name of Week Days: $days");
    days.removeLast();
  }
}
