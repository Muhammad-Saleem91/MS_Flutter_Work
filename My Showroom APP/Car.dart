import 'dart:io';

int TotalCars = 0;
String Car_File = "Car_data.txt";

class Car {
  int ID = TotalCars;
  late String name;
  late int model;
  late double purchasePrice;
  late String color;
  late String RegNo;
  late String brand;
  late double salePrice;
  late String carStatus;
  late double profit;

  Car() {
    ID = TotalCars;
    name = '';
    model = 0;
    purchasePrice = 0;
    color = '';
    RegNo = '';
    brand = '';
    salePrice = 0;
    carStatus = '';
    profit = 0;
  }

  int writeIntoFile(Car newCar, String fileName) {
    try {
      File file = File(fileName);
      String carDetails =
          "${newCar.ID} ${newCar.RegNo} ${newCar.brand} ${newCar.name} ${newCar.model} ${newCar.color} ${newCar.purchasePrice} ${newCar.salePrice} ${newCar.carStatus} ${newCar.profit} \n";

      file.writeAsStringSync(carDetails, mode: FileMode.append);
      return 1;
    } catch (e) {
      print('Error while saving - $e');
      return 0;
    }
  }

  void addCar(List<Car> carList) {
    try {
      var car = Car();

      car.ID = TotalCars++;

      if (TotalCars >= 50) {
        print('\n Sorry Car Storage Memory is full [Maximum Limit is 50] !! ');
        return;
      }

      stdout.write('\t\t Enter the make of the car: ');
      car.brand = stdin.readLineSync() ?? '';

      print("");

      stdout.write('\t\t Enter the name of the car: ');
      car.name = stdin.readLineSync() ?? '';

      print("");

      stdout.write('\t\t Enter the Registration Number of the car: ');
      car.RegNo = stdin.readLineSync() ?? '';

      print("");

      stdout.write('\t\t Enter the Model of the car: ');
      car.model = int.parse(stdin.readLineSync() ?? '');

      print("");

      stdout.write('\t\t Enter the color of the car: ');
      car.color = stdin.readLineSync() ?? '';

      print("");

      stdout.write('\t\t Enter the Selling Price of the car: ');
      car.salePrice = double.parse(stdin.readLineSync() ?? '');

      print("");

      stdout.write('\t\t Enter the Purchasing Price of the car: ');
      car.purchasePrice = double.parse(stdin.readLineSync() ?? '');

      print("");

      stdout.write('\t\t Enter the Status of the car: ');
      car.carStatus = stdin.readLineSync() ?? '';

      print("");

      // Calculating profit.
      car.profit = car.salePrice - car.purchasePrice;

      if (writeIntoFile(car, Car_File) == 0) {
        print('\n Sorry Car could not be saved \n');
        return;
      } else {
        print('\n Car has been saved successfully \n');
        carList.add(car);
      }
    } catch (e) {
      print('Error while adding car - $e');
    }
  }

  void loadCarsFromFile(List<Car> carList, String fileName) {
    try {
      var file = File(fileName);
      var lines = file.readAsLinesSync();

      for (var line in lines) {
        if (line.isNotEmpty) {
          var data = line.split(" ");

          var car = Car();
          car.ID = int.parse(data[0]);
          car.RegNo = data[1];
          car.brand = data[2];
          car.name = data[3];
          car.model = int.parse(data[4]);
          car.color = data[5];
          car.purchasePrice = double.parse(data[6]);
          car.salePrice = double.parse(data[7]);
          car.carStatus = data[8];

          car.profit = double.parse(data[9]);

          carList.add(car);
          TotalCars++;
        }
      }
    } catch (e) {
      print('Error while loading Cars - $e');
    }
  }

  void viewCars(List<Car> carList) {
    print('\n \t \t *** Total Cars Found [${carList.length}] *** \n \n');

    for (var car in carList) {
      print('\n \t \t *** CAR# [${car.ID}] Details*** \n');
      print('\t\t Make of the Car: ${car.brand} \n');
      print('\t\t Name of the Car: ${car.name} \n');
      print('\t\t Registration Number of the Car: ${car.RegNo} \n');
      print('\t\t Model of the Car: ${car.model} \n');
      print('\t\t Color of the Car: ${car.color} \n');
      print('\t\t Selling Price of the Car: ${car.salePrice} \n');
      print('\t\t Purchasing Price of the Car: ${car.purchasePrice} \n');
      print('\t\t Status of the Car: ${car.carStatus} \n');
      print('\t\t Profit of the Car: ${car.profit} \n');
    }
  }

  ReadFile(File fileName) {
    String contents = fileName.readAsStringSync();

    print(contents);
  }
}

void main() {
  List<Car> carList = List.empty(growable: true);

  Car newCar = new Car();

  newCar.loadCarsFromFile(carList, Car_File);

  //newCar.addCar(carList);
  newCar.viewCars(carList);
}
