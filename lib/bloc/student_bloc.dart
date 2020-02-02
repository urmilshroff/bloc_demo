import 'dart:async';

import 'package:bloc_demo/bloc/student.dart';

class StudentBloc {
  List<Student> _studentList = [
    Student(20, 'Rundi Rona', 3.5), // Nirali
    Student(24, 'Mugger Much', 3.9), // Miloni
    Student(48, 'Urmil Shroff', 2.7), // me
    Student(62, 'Hacker Vineet', 0.5), // Vineet
  ];

  final _studentListStreamController = StreamController<List<Student>>();
  final _studentGpaIncreaseStreamController = StreamController<Student>();
  final _studentGpaDecreaseStreamController = StreamController<Student>();

  Stream<List<Student>> get studentListStream =>
      _studentListStreamController.stream;

  StreamSink<List<Student>> get studentListSink =>
      _studentListStreamController.sink;

  StreamSink<Student> get studentGpaIncrease =>
      _studentGpaIncreaseStreamController.sink;

  StreamSink<Student> get studentGpaDecrease =>
      _studentGpaDecreaseStreamController.sink;

  StudentBloc() {
    _studentListStreamController.add(_studentList);
    _studentGpaIncreaseStreamController.stream.listen(_gpaIncreaseEvent);
    _studentGpaIncreaseStreamController.stream.listen(_gpaDecreaseEvent);
  }

  _gpaIncreaseEvent(Student student) {
    _studentList[2].gpa = _studentList[2].gpa + 1;
  }

  _gpaDecreaseEvent(Student student) {
    _studentList[2].gpa = _studentList[2].gpa - 1;
  }
}
