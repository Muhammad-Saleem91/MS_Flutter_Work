import 'dart:io';

import 'Car.dart';
import 'Sales.dart';
import 'Purchase.dart';
import 'Expenses.dart';

double TotalInvestments = 0.0;
double TotalProfit = 0.0;
void main() {
  displayHome();
  login();
}

displayHome() {
  print(
      "\n \n \t \t ================================================================== ");
  print(
      "\n \n \t \t   ************* Welcome to my showroom Application *************  ");
  print(
      "\n \n \t \t ================================================================== \n \n ");
}

login() {
  String adminUsername = "adminMS";
  String adminPassword = "ms1991";

  print('\n\t\t\t ** LOGIN PAGE ** \n');
  while (true) {
    stdout.write("\n\t\t Enter Username:");
    String userName = stdin.readLineSync() ?? " ";
    print("");
    stdout.write("\n\t\t Enter Password:");
    String password = stdin.readLineSync() ?? " ";
    print("");

    if ((userName == adminUsername) && (password == adminPassword)) {
      MainScreen();
    } else {
      print("\n\t\t Invalid  Credentials! Try Again.\n\n");
    }
  }
}

MainScreen() {
  var carList = <Car>[];
  var salesList = <Sales>[];
  var expenseList = <Expense>[];
  var purchaseList = <Purchase>[];

  Car newCar = new Car();
  Sales newSale = new Sales();
  Purchase newPurchase = new Purchase();
  Expense newExpense = new Expense();

  newCar.loadCarsFromFile(carList, Car_File);
  newSale.loadSalesFromFile(salesList, Sales_File);
  newPurchase.loadPurchaseFromFile(purchaseList, Purchase_File);
  newExpense.loadExpensesFromFile(expenseList, Expenses_File);

  while (true) {
    print('\n\t\t\t ** MENU ** \n');
    print('\t\t 1. Add Car');
    print('\t\t 2. View Cars');
    print('\t\t 3. Add Sales');
    print('\t\t 4. View Sales');
    print('\t\t 5. Add Expenses');
    print('\t\t 6. View Expenses');
    print('\t\t 7. Add Purchase');
    print('\t\t 8. View Purchase');
    print('\t\t 0. Exit');

    print('\n\t\t Enter your choice : ');

    var choice = int.parse(stdin.readLineSync() ?? '0');

    switch (choice) {
      case 0:
        print('\n Program Terminated Successfully !! \n');
        exit(0);
      case 1:
        newCar.addCar(carList);
        break;
      case 2:
        newCar.viewCars(carList);
        break;
      case 3:
        newSale.addSales(salesList, carList);
        break;
      case 4:
        newSale.viewSales(salesList);
        break;
      case 5:
        newExpense.addExpense(expenseList, carList);
        break;
      case 6:
        newExpense.viewExpenses(expenseList);
        break;
      case 7:
        newPurchase.addPurchase(purchaseList, carList);
        print(
            "Now Also Adding it to the main Inventory of Cars with the same Reg No.");
        newCar.addCar(
            carList); // To update the list of cars after purchasing a new car
        break;
      case 8:
        newPurchase.viewPurchase(purchaseList);
        break;
      default:
        print('\n Invalid choice! Please enter a number between 0 and 8. \n');
    }
  }
}
