import 'person_class.dart';

class Student extends Person {
  List<int> grades;
  Student({required super.name, required super.age, required this.grades});

  void displayStudentInfo() {
    super.displayInfo();
    print("degrees: $grades");
  }
}
