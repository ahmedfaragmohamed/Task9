import 'task.dart';

void main() {


  Student student1 = Student(faculty: "Computer Science" , name: "Youssef", age: 20, address: "Alex", phone: "0123456789", email: "youssef@gmail.com");
  Student student2 = Student(faculty: "Business" , name: "Ali", age: 24, address: "Cairo", phone: "012558589", email: "Ali@gmail.com");
  Instructor instructor = Instructor(lessons: ["Flutter", "Android"], name: "Mohamed", age: 27, address: "Doki", phone: "010101010", email: "mohamed@gmail.com");
  Group group = Group(groupName: "Group 1 Flutter", instructor: instructor, student: [student1,student2], date: "10/9/2023", faculty: "Computer Science" , name: "Mohamed", age: 20, address: "Alex", phone: "0123456789", email: "mohamed@gmail.com");

  student1.info();
  student2.info();
  instructor.info();
  group.info();
  student1.attended();
  student1.attended();
  student2.attended();
  student1.info();
  student2.info();
  instructor.addLesson(lesson: "Flutter lesson");
  instructor.showLessons();
  group.deleteStudent(student1);


  Student student3 = Student(faculty: "Medicine" , name: "momen", age: 20, address: "Zefta", phone: "01238558", email: "momen@gmail.com");
  Student student4 = Student(faculty: "AI" , name: "zahra", age: 24, address: "tanta", phone: "012558582", email: "zahra@gmail.com");
  group.addNewStudent(student3);
  group.addNewStudent(student4);
  group.showStudentName();



  // Person human= Person(name: "ahmed", age: 20);
  // human.info();
  // student1.info();
  // student1.info();
  // instructor.info();
  // group.info();
  // student1.attended();
  // student1.attended();
  // student2.attended();
  // student1.info();





}