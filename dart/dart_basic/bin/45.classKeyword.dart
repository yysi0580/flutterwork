// void main() {
//   final student = Student(name: '민지', age: 20, grade: 1);
//   print(student.name);
//   print(student.age);
//   print(student.grade);
// }

final class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}

// base class Student extends Person {
//   final int grade;
//
//   Student({
//     required String name,
//     required int age,
//     required this.grade,
//   }) : super(name: name, age: age);
// }
// 2. bass

base class Person2{
  final String name;
  final int age;

  Person2({
    required this.name,
    required this.age,
  });
}

base class Student extends Person2 {
  late final int grade;
    Student({
      required String name,
      required int age,
      required this.grade,
    }) : super(name: name, age: age);
}
// 3. sealed
// abstract 이면서 final임.
// 패턴매칭을 사용할 수 있음.
sealed class Person3{}
class Idol extends Person3{}
class Chef extends Person3{}
class Tjoeun extends Person3{}



String whoIsHe(Person3 person) => switch(person) {
  Idol i =>'아이돌',
  Chef c => '쉐프',
  _ => '나머지'
};

void main(){
  print(whoIsHe(Idol()));
  print(whoIsHe(Chef()));
  print(whoIsHe(Tjoeun()));
}

mixin class AnimalMixin {
  String bark() {
    return '67';
  }
}
mixin class AnimalMixin2 {
  String miow() {
    return '56';
  }
}
mixin class AnimalMixi3 {
  String bak() {
    return '29';
  }
}
class Dog extends AnimalMixi3 with AnimalMixin, AnimalMixin2{}

/*
키워드            | extends | implements | with  | 외부상속 |
class            |   O     |     O      |   O   |   O    |
final class      |   X     |     X      |   X   |   X    |
base class       |   O     |     X      |   X   |   X    |
interface class  |   X     |     O      |   X   |   O    |
sealed class     |   O     |     X      |   X   |   X    |
abstract class   |   O     |     O      |   O   |   O    |
mixin            |   X     |     x      |   O   |   O    |
minin class      |   O     |     O      |   O   |   O    |
*/


