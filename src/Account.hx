class Account {
    private var balance: Float;
    private var person: Person;

    public function new(person: Person, balance: Float = 0) {
        this.person = person;
        this.balance = balance;
    }

    public function deposite(amount: Float) {
        this.balance += amount;
        this.message("Balance replenished by the amount: " + amount);
    }

    public function withdraw(amount: Float) {
        if(this.balance - amount < 0)
            this.message("Insufficient funds in the account");
        else {
            this.balance -= amount;
            this.message("Your balance is " + this.balance);
        }
    }

    public function getBalance():Float {
        return this.balance;
    }

    public function transfer(target: Account, amount: Float) {
        if(target.getBalance() - amount < 0) {
            this.message("Insufficient funds in the account");
        }
        else {
            target.deposite(amount);
            this.withdraw(amount);
        }
    }

    public function getInfo() {
        trace(
            "\nName: " + this.person.getName() + 
            "\nAge: " + this.person.getAge() +
            "\nBalance: " + this.balance
            );
    }

    private function message(msg: String) {
        trace("\n"+msg);
    }
}