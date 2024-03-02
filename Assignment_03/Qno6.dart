import 'dart:io';

void main() {
  Map<String, Map> World = {
    "Pakistan": {
      "Capital City": "Islamabad",
      "Currency": "Rupees",
      "Language": "Urdu",
    },
    "India": {
      "Capital City": "New Delhi",
      "Currency": "Indian Rupee",
      "Language": "Hindi",
    },
    "Brazil": {
      "Capital City": "Brasília",
      "Currency": "Brazilian Real",
      "Language": "Portuguese",
    },
    "Japan": {
      "Capital City": "Tokyo",
      "Currency": "Japanese Yen",
      "Language": "Japanese",
    },
    "South Africa": {
      "Capital City": "Pretoria",
      "Currency": "South African Rand",
      "Language": "Afrikaans, English, Zulu, Xhosa, and others",
    },
    "Australia": {
      "Capital City": "Canberra",
      "Currency": "Australian Dollar",
      "Language": "English",
    },
  };

  print("Enter Country Name: ");
  String CountryName = stdin.readLineSync()!;

  if (World.containsKey(CountryName)) {
    print("Capital of $CountryName: ${World[CountryName]!["Capital City"]}");
    print("Currency of $CountryName: ${World[CountryName]!["Currency"]}");
  } else {
    print("$CountryName not found in World Map.");
  }
}
