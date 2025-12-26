// // Record : List와 동일하지만 타입을 명시할 수 있다.
// void main() {
//   final result = nameAndAge({'name':'더조은', 'age' : 20});
//   print(result);
// }
//
// nameAndAge(Map<String, dynamic> json) {
//   return [json['name'],json['age']];
// }

// Record
void main () {
  final result = nameAndAge({'name':'더조은', 'age' : 20});
  print(result);

  print(result.$1); // $n 각 필드에 명명된 getter 호출
  print(result.$2);




  print('---------------------');
  final result2 = getNewjeansWithType();
  for(final item in result2) {
    print(item.$1);
    print(item.$2);
  }
}
(String,int)nameAndAge(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

List<Map<String,dynamic>> getNewjeans() {
  return [
    {'name' : '민지','age' : 20},
    {'name' : '혜린','age' : 19}
  ];
}

// 위를 소괄호를 변경
List<(String,int)> getNewjeansWithType() {
  return [
    ('민지',20),
    ('혜린',19)
  ];
}

// 매개변수에 이름을 넣을 수 있음
List<(String name,int age)> getNewjeansWithType2() {
  return [('민지',20),('혜린',19)];
}

List<({String name,int age})> getNewjeansWithType3() {
  return [
    (name: '민지', age: 20),
    (name: '혜린', age: 19),
  ];
}
List<({String name,int age})> getGirlGroup(){

}

