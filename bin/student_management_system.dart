import 'dart:io';

import 'student_class.dart';
import 'student_manager_class.dart';

void main() {
  List<int> studentGrades = [90, 79, 96, 83, 89, 98];
  Student student = Student(name: "Shorouq", age: 22, grades: studentGrades);
  student.displayStudentInfo();
  print("****");
  StudentManager studentManager = StudentManager();
  studentManager.displayStudentsInfo();
  Student firstStudent = Student(
    name: "Aseel",
    age: 20,
    grades: [80, 78, 93, 89, 75, 95],
  );
  Student secondStudent = Student(
    name: "omar",
    age: 21,
    grades: [98, 94, 89, 99, 87, 85],
  );

  studentManager.addStudent(firstStudent);
  studentManager.addStudent(secondStudent);
  studentManager.displayStudentsInfo();
  print("****");
  String decisionNumber;
  do {
    displayDecisionMenu();
    decisionNumber = stdin.readLineSync() ?? "";
    switch (decisionNumber) {
      case "1":
        {
          print("Enter student name");
          String name = stdin.readLineSync()!;
          print("Enter student age");
          int age = int.parse(stdin.readLineSync()!);
          // print("Enter student number of courses");
          // int coursesNumber = int.parse(stdin.readLineSync()!);
          // List<int> grades = [];
          // for (var i = 0; i < coursesNumber; i++) {
          //   print("Enter degree${i + 1}");

          //   grades.add(int.parse(stdin.readLineSync()!));
          // }

          print("Enter students grades like this 70, 80, 77, ...");
          List<int> grades = stdin
              .readLineSync()!
              .split(",")
              .map((e) => int.parse(e))
              .toList();

          studentManager.addStudent(
            Student(name: name, age: age, grades: grades),
          );
          break;
        }
      case "2":
        studentManager.displayStudentsInfo();
        break;
      case "3":
        print("You exited from the program.");
        break;
    }
  } while (decisionNumber != "3");
  print("****");
  studentManager.updateStudent(2, student);
  studentManager.updateStudent(1, student);
  studentManager.displayStudentsInfo();
}

void displayDecisionMenu() {
  print(
    "Enter decision number: \n1:add student\n2:display students info\n3:exit",
  );
}
