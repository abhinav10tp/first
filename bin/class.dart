import 'dart:io';

class BankAccount {
  int accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit() {
    print("Enter amount to deposit:");
    double? amount = double.parse(stdin.readLineSync()!);
    balance += amount;
    print("Rs.$amount deposited successfully.");
  }

  void withdraw() {
    print("Enter amount to withdraw:");
    double? amount = double.parse(stdin.readLineSync()!);
    if (amount <= balance) {
      balance -= amount;
      print('Rs.$amount withdrawn successfully.');
    } else {
      print('Insufficient balance for withdrawal.');
    }
  }

  void getAccountInfo() {
    print("\nAccount Information:");
    print("Account Number: $accountNumber");
    print("Account Holder: $accountHolder");
    print("Current Balance: Rs.$balance");
  }
}


void main() {

  print("\nEnter your Name");
  String accountHolder = (stdin.readLineSync()!);
  print("Create Your Account Number");
  int accountNumber = int.parse(stdin.readLineSync()!);

  print('Enter initial balance:');
  double? balance = double.parse(stdin.readLineSync()!);

  BankAccount account = BankAccount(accountNumber,accountHolder,balance);

  account.getAccountInfo();

  account.deposit();
  account.withdraw();

  account.getAccountInfo();
}
