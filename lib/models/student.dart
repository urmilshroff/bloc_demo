class Student {
  int _rollNumber;
  String _name;
  int _marks;

  Student(this._rollNumber, this._name, this._marks);

  set rollNumber(int rollNumber) {
    this._rollNumber = rollNumber;
  }

  set name(String name) {
    this._name = name;
  }

  set marks(int marks) {
    this._marks = marks;
  }
}
