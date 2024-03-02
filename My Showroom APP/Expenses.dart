import 'dart:io';
import 'Car.dart';

int TotalExpenses = 0;
String Expenses_File = "Expense_data.txt";

class Expense {
  late int ID;
  late String RegNo;
  late String name;
  late String description;
  late double amount;

  Expense() {
    ID = TotalExpenses;
    RegNo = '';
    name = '';
    description = '';
    amount = 0.0;
  }

  int writeIntoFile(Expense newExpense, String fileName) {
    try {
      File file = File(fileName);
      String ExpensesDetails =
          "${newExpense.ID}  ${newExpense.RegNo}  ${newExpense.name}  ${newExpense.description}  ${newExpense.amount} \n";

      file.writeAsStringSync(ExpensesDetails, mode: FileMode.append);
      return 1;
    } catch (e) {
      print('Error while saing - $e');
      return 0;
    }
  }

  void loadExpensesFromFile(List<Expense> ExpenseList, String fileName) {
    try {
      var file = File(fileName);
      var lines = file.readAsLinesSync();

      for (var line in lines) {
        if (line.isNotEmpty) {
          var data = line.split("  ");

          Expense expense = new Expense();
          expense.ID = int.parse(data[0]);
          expense.RegNo = data[1];
          expense.name = data[2];
          expense.description = data[3];
          expense.amount = double.parse(data[4]);

          ExpenseList.add(expense);
          TotalExpenses++;
        }
      }
    } catch (e) {
      print('Error while loading Expenses - $e');
    }
  }

  void addExpense(List<Expense> expenseList, List<Car> carList) {
    try {
      var expense = Expense();

      print('\n Add Expense Function Called \n');

      expense.ID = TotalExpenses++;

      print('\t\t Enter the Car ID: ');
      expense.RegNo = stdin.readLineSync() ?? '';

      var carExists = carList.any((car) => car.RegNo == expense.RegNo);
      if (!carExists) {
        print(
            '\n Car with Registration Number ${expense.RegNo} does not exist. Please enter a valid Car Registration Number.\n');
        return;
      }

      print('\t\t Enter the Expense Name: ');
      expense.name = stdin.readLineSync() ?? '';

      print('\t\t Enter the Expense Description: ');
      expense.description = stdin.readLineSync() ?? '';

      print('\t\t Enter the Amount: ');
      expense.amount = double.parse(stdin.readLineSync() ?? '');

      // Update total expenses
      TotalExpenses += expense.amount.toInt();

      expenseList.add(expense);

      if (writeIntoFile(expense, Expenses_File) == 0) {
        print('\n Sorry Expense could not be saved \n');
        return;
      } else {
        print('\n Expense has been saved successfully \n');
      }
    } catch (e) {
      print('Error while adding expense - $e');
    }
  }

  void viewExpenses(List<Expense> expenseList) {
    print('\n View Expenses Function Called \n');
    print(
        '\n \t \t *** Total Expenses Found [${expenseList.length}] *** \n \n');

    for (var expense in expenseList) {
      print('\n \t \t *** EXPENSE# [${expense.ID}] Details*** \n');
      print('\t\t Car ID: ${expense.RegNo} \n');
      print('\t\t Expense Name: ${expense.name} \n');
      print('\t\t Expense Description: ${expense.description} \n');
      print('\t\t Amount: ${expense.amount} \n');
    }
  }
}

void main() {
  List<Expense> expensesList = List.empty(growable: true);
  List<Car> carList = List.empty(growable: true);

  Car newCar = new Car();

  newCar.loadCarsFromFile(carList, Car_File);

  Expense newExpense = new Expense();

  newExpense.loadExpensesFromFile(expensesList, Expenses_File);

  newExpense.addExpense(expensesList, carList);
  
  newExpense.viewExpenses(expensesList);
}
