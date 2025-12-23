/*
  1. var 타입: 처음 들어온 값이 type이 됨. type이 정해지면 바꿀 수 없다.
  2. dynamic 타입: 처음 들어온 값이 type이 됨. 처음 타입과 다른 타입을 바꿀 수 있음 넣어도 됨
  */
void main() {
  String? name = 'hong';
  name = 'gil';
  // name = 5;
  dynamic number = 5;
  print(number);

  dynamic bool1 = true;
  print(bool1);
  bool1 = false;
  bool1 = 'true';
  bool1 = 67;
}