class Person {
    private var name: String;
    private var age: Int;

    public function new(name: String, age: Int){
        this.name = name;
        this.age = age;
    }

    public function getName() {
        return this.name;
    }

    public function getAge() {
        return this.age;
    }

    public function setName(name: String) {
        this.name = name;
    }

    public function setAge(age: Int) {
        this.age = age;
    }

    public function greet() {
        trace("\nName: " + this.name +"\nAge: " + this.age);
    }
}