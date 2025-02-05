class Main {
    static function main() {
        hello();
        trace(sum([1, 2, 3, 4, 5, 6, 7, 8]));
        trace(factorial(5));

        var person: Person = new Person("Vladimir", 39);
        person.greet();

        var student: Student = new Student("Vladimir", 39, "newbie");
        student.greet();

        var account: Account = new Account(person, 120);
        account.getInfo();
        account.deposite(145.3);
        account.withdraw(22.8);
        account.getInfo();

        var account1: Account = new Account(new Person("Dracula", 236), 10492.98);
        account1.getInfo();
        account1.transfer(account, 120.1);
        account1.getInfo();
    }

    static function hello() {
        var d = Date.now();
        trace("My name is k2spam!");
        trace("Today is: " + d);
    }

    static function sum(arr:Array<Int>) {
        var sum: Int = 0;

        for(n in arr){ 
            sum += n;
        }

        return sum;
    }

    static function factorial(num:Int) {
        var out: Int = 1;

        if(num < 0) 
            return -1;

        for(n in 1...num+1) {
            out *= n;
        }

        return out;
    }
}