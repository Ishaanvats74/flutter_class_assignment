import 'dart:io';

void main() {

  double balance = 1000;

  while(true) {

    print("\nATM MENU");
    print("1. Check Balance");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Exit");

    print("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch(choice) {

      case 1:
        print("Balance = ₹$balance");
        break;

      case 2:
        print("Enter deposit amount: ");
        double dep = double.parse(stdin.readLineSync()!);
        balance = balance + dep;
        print("Money Deposited");
        break;

      case 3:
        print("Enter withdraw amount: ");
        double wit = double.parse(stdin.readLineSync()!);

        if(wit <= balance) {
          balance = balance - wit;
          print("Money Withdrawn");
        } else {
          print("Not enough balance");
        }
        break;

      case 4:
        print("Thank You!");
        return;

      default:
        print("Wrong choice");
    }
  }
}