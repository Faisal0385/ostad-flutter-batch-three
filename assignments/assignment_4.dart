// Define an abstract class Account:
abstract class Account {
  // accountNumber (integer)
  late int accountNumber;

  // balance (double)
  late double balance;

  // It should also have the following methods:
  // deposit(double amount): Adds the specified amount to the account balance.
  deposit(double amount) {
    balance = this.balance + amount;
    return balance;
  }

  // withdraw(double amount):
  // Abstract method that deducts the specified amount from the account balance.
  withdraw(double amount);
}

// Define a class SavingsAccount that extends the Account class.
class SavingsAccount extends Account {

  // interestRate (double).
  late double interestRate;

  SavingsAccount(accountNumber, balance, this.interestRate) {
    super.accountNumber = accountNumber;
    super.balance = balance;
  }

  // Implement the withdraw() method in the SavingsAccount class as follows:
  // Subtract the specified amount from the account balance.
  // Apply the interest rate to the remaining balance.

  @override
  withdraw(double amount) {
    double final_balance = super.balance - amount;
    final_balance = final_balance + (final_balance * (this.interestRate/100));
    return final_balance;
  }
}

// Define a class CurrentAccount that extends the Account class.
class CurrentAccount extends Account {
  // additional property called overdraftLimit (double).
  late double overdraftLimit;

  CurrentAccount(accountNumber, balance, this.overdraftLimit) {
    super.accountNumber = accountNumber;
    super.balance = balance;
  }

  // Implement the withdraw() method in the CurrentAccount class as follows:
  @override
  withdraw(double amount) {
    // ● If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
    // ● Allow withdrawals up to the overdraft limit.
    if (amount > overdraftLimit) {
      print("Insufficient funds!! Your overdraft limit is ${overdraftLimit}");
    } else {
      balance = super.balance - amount;
      return balance;
    }
  }
}

// In main()
void main() {
  // ● Create an instance of the SavingsAccount class by providing values for the account
  // number, initial balance, and interest rate.
  SavingsAccount accointObj = SavingsAccount(123456, 10000.00, 10.00);
  // ● Use the instance to perform operations like depositing and withdrawing money.
  print("After depositing amount: ${accointObj.deposit(6000.00)}");
  print("After withdrawing amount: ${accointObj.withdraw(1000.00)}");

  // ● Create an instance of the CurrentAccount class by providing values for the account
  // number, initial balance, and overdraft limit.
  CurrentAccount currentAccountObj = CurrentAccount(123456, 6000.00, 2000.00);
  // ● Use the instance to perform operations like depositing and withdrawing.
  // print("After depositing amount: ${currentAccountObj.deposit(2000.00)}");
  // print(currentAccountObj.withdraw(2000.00));

}


