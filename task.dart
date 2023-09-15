
class Person {
  String? name;
  int? age;
  String? address;
  String? phone;
  String? email;

  Person({required this.name,
    required this.age,
    this.address,
    this.phone,
    this.email});


  void info() {
    print(
        "${name} is a instructor,he is $age years old ,he from $address and his email is $email ");
  }
}

class Instructor extends Person {
  List<String> lessons = [];
  Instructor({required this.lessons, required super.name, required super.age, required super.address, required super.phone, required super.email});
  void addLesson({required String lesson}) {
    lessons.add(lesson);
  }

  void showLessons() {
    for (int i = 0; i < lessons.length; i++) {
      print("lesson ${i + 1} : ${lessons[i]}");
    }
  }

  @override
  void info() {
    // TODO: implement info
    print(
        "${this.name} is a instructor,he is ${this.age} years old ,he from ${this.address} and his email is ${this.email} ");
  }
}

class Student extends Person {
  int attend = 0;
  String? faculty;
  Student({required this.faculty, required super.name, required super.age, required super.address, required super.phone, required super.email});
  void attended() {
    attend++;
  }

  @override
  void info() {
    // TODO: implement info
    print(
        "${this.name} is a student ,he is ${this.age} years old ,he from ${this.address} ,his phone is ${this.phone} ,he studies at faculty of ${this.faculty} and He attended ${this.attend} sessions");
  }
}

class Group extends Student {
  String? groupName;
  Instructor? instructor;
  List<Student> student = [];
  String? date;

  Group(
      {required this.groupName, required this.instructor, required this.student, required this.date, required super.faculty, required super.name, required super.age, required super.address, required super.phone, required super.email});


  void addNewStudent(Student student) {
    this.student.add(student);
  }

  void deleteStudent(Student student) {
    if (this.student.isEmpty) {
      print("the list of students is empty !");
    } else if (this.student.contains(student)) {
      this.student.remove(student);
    } else {
      print("the student not exist !");
    }
  }

  void showStudentName() {
    for (int i = 0; i < this.student.length; i++) {
      print("student ${i + 1} : ${this.student[i]}");
    }
  }

  @override
  void info() {
    // TODO: implement info
    print("Group ${this.name} has Coach ${this.instructor!.name}, which includes ${this
        .student.length} students, and its date is ${this.date}");
  }
}