void main() {
  Map Car = {
    "brand" : "Toyota",
    "color" : "Red",
    "isSedan" : true,
  };

  if(Car["isSedan"] && Car["color"] == "Red")
  {
    print("Match");
  }

  else
  {
    print("No Match");
  }
}
