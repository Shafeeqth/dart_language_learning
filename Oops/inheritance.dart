class BankAccount {
  double _balance = 0;

  BankAccount({double balance = 0}) : _balance = balance;

  double get balance => this._balance;

  set balance(double balance) {
    if (balance >= 1) {
      this._balance = balance;
    }
  }

  void deposit(double amount) {
    this._balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= _balance) {
      balance -= amount;
      return true;
    }
    return false;
  }

  @override // indicates the method is overridden
  String toString() {
    return "Bank account balance $balance";
  }
}

class SavingsAccount extends BankAccount {
  double _interestRate = 0;

  SavingsAccount({double balance = 0, double interestRate = .1})
      : _interestRate = interestRate,
        super(balance: balance);

  double get interestRate => _interestRate;

  set interestRate(double interest) {
    if (interest > 0) {
      _interestRate = interest;
    }
  }

  addInterest() {
    double interest = _interestRate * _balance;
    this._balance += interest;
  }

  // Reuse functionality of parent class from child class
  @override
  String toString() {
    return super.toString() + " interest rate $interestRate";
  }

  // override == operator
  @override
  operator ==(o) =>
      o is SavingsAccount &&
      o._balance == _balance &&
      o.interestRate == interestRate;

  @override
  int get hashCode => Object.hash(interestRate, balance);
}

void main(List<String> args) {
  SavingsAccount savingsAccount =
      SavingsAccount(balance: 50000, interestRate: 10);
  SavingsAccount savingsAccount1 =
      SavingsAccount(balance: 50000, interestRate: 10);
  print(savingsAccount);

  // check two objects are same
  print(savingsAccount1 == savingsAccount);
  print(savingsAccount1.hashCode);
  print(savingsAccount.hashCode);
  print(identical(savingsAccount, savingsAccount1));
}
