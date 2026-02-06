import 'student_class.dart';

class StudentManager {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
    print("student ${student.name} is added successfully");
  }

  void displayStudentsInfo()  {
    if (students.isNotEmpty) {
      for (var i = 0; i < students.length; i++) {
        print("student${i + 1}: ");
        students[i].displayStudentInfo();
      }
    } else {
      print("there isn't students now");
    }
  // Future<void> displayStudentsInfo() async {
  //   await getDataSimulation();
  //   if (students.isNotEmpty) {
  //     for (var i = 0; i < students.length; i++) {
  //       print("student${i + 1}: ");
  //       students[i].displayStudentInfo();
  //     }
  //   } else {
  //     print("there isn't students now");
  //   }
  }

  void updateStudent(int index, Student student) {
    // try {
    //   students[index]=student;
    // } catch (e) {
    //   print(e);
    // }
    try {
      if (index >= students.length) {
        throw Exception("no student in this index.");
      } else {
        students[index] = student;
        print("the student is updated successfully.");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> getDataSimulation() async {
    print("waiting data to come...");
    await Future.delayed(Duration(seconds: 2));
    print("data came successfully");
  }
}
