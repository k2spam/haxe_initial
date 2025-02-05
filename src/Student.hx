class Student extends Person {
    private var grade: String;

    public function new(name: String, age: Int, grade: String) {
        super(name, age);
        this.grade = grade;
    }

    override function greet() {
        trace("\nName: " + this.name + "\nAge: " + this.age + "\nGrade: " + this.grade);
    }
}