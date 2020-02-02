class Student {
  int _rollNumber;
  String _name;
  double _gpa;

  Student(this._rollNumber, this._name, this._gpa);

  set rollNumber(int rollNumber) {
    this._rollNumber = rollNumber;
  }

  set name(String name) {
    this._name = name;
  }

  set gpa(double gpa) {
    this._gpa = gpa;
  }
}
