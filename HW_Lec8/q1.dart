void main() {
  /*
  Q1
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.
 */

  BankAccount account123 = BankAccount();
  account123.balance = 1000;
  print(account123.balance);
  account123.balance = -200;
  print(account123.balance);
}

class BankAccount {
  num? _balance;

  num get balance => _balance!;

  set balance(num balance) {
    if (balance < 0) {
      print("Invalid balance");
    } else {
      this._balance = balance;
    }
  }
}
