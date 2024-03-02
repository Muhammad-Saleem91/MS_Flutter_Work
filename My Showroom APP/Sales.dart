import 'dart:io';
import 'Car.dart';

int TotalSales = 0;
String Sales_File = "Sales_data.txt";

class Sales {
  late int ID;
  late String RegNo;
  late String customerName;
  late String customerCNIC;
  late double amount;

  Sales() {
    ID = TotalSales;
    RegNo = '';
    customerName = '';
    customerCNIC = '';
    amount = 0.0;
  }

  int writeIntoFile(Sales newSale, String fileName) {
    try {
      File file = File(fileName);
      String SaleDetails =
          "${newSale.ID} ${newSale.RegNo} ${newSale.customerName} ${newSale.customerCNIC} ${newSale.amount} \n";

      file.writeAsStringSync(SaleDetails, mode: FileMode.append);
      return 1;
    } catch (e) {
      print('Error while saving - $e');
      return 0;
    }
  }

  void loadSalesFromFile(List<Sales> salesList, String fileName) {
    try {
      var file = File(fileName);
      var lines = file.readAsLinesSync();

      for (var line in lines) {
        if (line.isNotEmpty) {
          var data = line.split(" ");

          Sales sale = new Sales();
          sale.ID = int.parse(data[0]);
          sale.RegNo = data[1];
          sale.customerName = data[2];
          sale.customerCNIC = data[3];
          sale.amount = double.parse(data[4]);

          salesList.add(sale);
          TotalSales++;
        }
      }
    } catch (e) {
      print('Error while loading Sales - $e');
    }
  }

  void addSales(List<Sales> salesList, List<Car> carList) {
    try {
      var sale = Sales();

      sale.ID = TotalSales++;

      print('\t\t Enter the Car ID: ');
      sale.RegNo = stdin.readLineSync() ?? '';

      var carExists = carList.any((car) => car.RegNo == sale.RegNo);
      if (!carExists) {
        print(
            '\n Car with ID ${sale.RegNo} does not exist. Please enter a valid Car ID.\n');

        return;
      }

      print('\t\t Enter the Customer Name: ');
      sale.customerName = stdin.readLineSync() ?? '';

      print('\t\t Enter the Customer CNIC: ');
      sale.customerCNIC = stdin.readLineSync() ?? '';

      print('\t\t Enter the Amount: ');
      sale.amount = double.parse(stdin.readLineSync() ?? '');

      // Update total sales
      //TotalSales += sale.amount.toInt();

      salesList.add(sale);

      carList.removeWhere((car) => car.RegNo == sale.RegNo);

      if (writeIntoFile(sale, Sales_File) == 0) {
        print('\n Sorry Sales could not be saved \n');
        return;
      } else {
        print('\n Sales have been saved successfully \n');
      }
    } catch (e) {
      print('Error while adding sales - $e');
    }
  }

  void viewSales(List<Sales> salesList) {
    print('\n \t \t *** Total Sales Found [${salesList.length}] *** \n \n');

    for (var sale in salesList) {
      print('\n \t \t *** SALE# [${sale.ID}] Details*** \n');
      print('\t\t Car ID: ${sale.RegNo} \n');
      print('\t\t Customer Name: ${sale.customerName} \n');
      print('\t\t Customer CNIC: ${sale.customerCNIC} \n');
      print('\t\t Amount: ${sale.amount} \n');
    }
  }
}

void main() {
  List<Sales> salesList = List.empty(growable: true);
  List<Car> carList = List.empty(growable: true);

  Car newCar = new Car();

  newCar.loadCarsFromFile(carList, Car_File);

  Sales newSale = new Sales();

  newSale.loadSalesFromFile(salesList, Sales_File);

  newSale.addSales(salesList, carList);

  newSale.viewSales(salesList);
}
