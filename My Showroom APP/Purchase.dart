import 'dart:io';
import 'Car.dart';

int TotalPurchases = 0;
String Purchase_File = "Purchase_data.txt";

class Purchase {
  late int ID;
  late String RegNo;
  late String customerName;
  late String customerCNIC;
  late double amount;

  Purchase() {
    ID = TotalPurchases;
    RegNo = '';
    customerName = '';
    customerCNIC = '';
    amount = 0.0;
  }

  int writeIntoFile(Purchase newPurchase, String fileName) {
    try {
      File file = File(fileName);
      String PurchaseDetails =
          "${newPurchase.ID} ${newPurchase.RegNo} ${newPurchase.customerName} ${newPurchase.customerCNIC} ${newPurchase.amount} \n";

      file.writeAsStringSync(PurchaseDetails, mode: FileMode.append);
      return 1;
    } catch (e) {
      print('Error while saving - $e');
      return 0;
    }
  }

  void loadPurchaseFromFile(List<Purchase> PurchasesList, String fileName) {
    try {
      var file = File(fileName);
      var lines = file.readAsLinesSync();

      for (var line in lines) {
        if (line.isNotEmpty) {
          var data = line.split(" ");

          Purchase purchase = new Purchase();
          purchase.ID = int.parse(data[0]);
          purchase.RegNo = data[1];
          purchase.customerName = data[2];
          purchase.customerCNIC = data[3];
          purchase.amount = double.parse(data[4]);

          PurchasesList.add(purchase);
          TotalPurchases++;
        }
      }
    } catch (e) {
      print('Error while loading Purchases - $e');
    }
  }

  void addPurchase(List<Purchase> PurchaseList, List<Car> carList) {
    try {
      var purchase = new Purchase();
      var car = new Car();

      print('\n Add Purchase Function Called \n');

      purchase.ID = TotalPurchases++;

      print('\t\t Enter the Registration Number: ');
      purchase.RegNo = stdin.readLineSync() ?? '';

      var carExists = carList.any((car) => car.RegNo == purchase.RegNo);
      if (carExists == true) {
        print(
            '\n Car with same Registration Number ${purchase.RegNo} does exist. Please enter a valid and unique Registration Number.\n');

        return;
      }

      print('\t\t Enter the Customer Name: ');
      purchase.customerName = stdin.readLineSync() ?? '';

      print('\t\t Enter the Customer CNIC: ');
      purchase.customerCNIC = stdin.readLineSync() ?? '';

      print('\t\t Enter the Amount: ');
      purchase.amount = double.parse(stdin.readLineSync() ?? '');

      // Update total Purchase
      TotalPurchases += purchase.amount.toInt();
      car.addCar(carList);

      PurchaseList.add(purchase);

      if (writeIntoFile(purchase, Purchase_File) == 0) {
        print('\n Sorry Purchase could not be saved \n');
        return;
      } else {
        print('\n Purchase have been saved successfully \n');
      }
    } catch (e) {
      print('Error while adding Purchase - $e');
    }
  }

  void viewPurchase(List<Purchase> PurchaseList) {
    print('\n View Purchase Function Called \n');
    print(
        '\n \t \t *** Total Purchase Found [${PurchaseList.length}] *** \n \n');

    for (var purchase in PurchaseList) {
      print('\n \t \t *** PURCHASE# [${purchase.ID}] Details*** \n');
      print('\t\t Car ID: ${purchase.RegNo} \n');
      print('\t\t Customer Name: ${purchase.customerName} \n');
      print('\t\t Customer CNIC: ${purchase.customerCNIC} \n');
      print('\t\t Amount: ${purchase.amount} \n');
    }
  }
}

void main() {
  List<Purchase> PurchaseList = List.empty(growable: true);
  List<Car> carList = List.empty(growable: true);

  Car newCar = new Car();

  newCar.loadCarsFromFile(carList, Car_File);

  Purchase newPurchase = new Purchase();

  newPurchase.loadPurchaseFromFile(PurchaseList, Purchase_File);

  newPurchase.addPurchase(PurchaseList, carList);
  newPurchase.viewPurchase(PurchaseList);
}
