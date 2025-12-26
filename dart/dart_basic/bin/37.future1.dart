void main() {
  Future<String> name = Future.value('tjoeun');
  Future<int> num = Future.value(7);
  Future<bool> isTrue = Future.value(true);
  Future.delayed(Duration(seconds: 2), () {
    print('Delay 끝');
  });
  addNumbers(1, 1);
  addNumbers(2, 2);
}

void addNumbers(int num1, int num2){
  print('계산 시작 : $num1 + $num2');

  Future.delayed(Duration(seconds: 2), (){
    print('계산완료 : $num1 + $num2 = ${num1 + num2}');
  });
  print('함수 완료');
}

