// 함수에 반드시 async넛고. Future앞에는 await를 넣는다
void main() async {
  await addNumbers(1, 1);
  await addNumbers(2, 2);
  final result =  addNumbers2(3, 3);
  print('결과 : $result');
}
Future<void> addNumbers(int num1, int num2) async {
  print('계산 시작 : $num1 + $num2');

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 : $num1 + $num2 = ${num1 + num2}');
  });
  print('함수 완료');
}

Future<int> addNumbers2(int num1, int num2) async {
  print('계산 시작 : $num1 + $num2');

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 : $num1 + $num2 = ${num1 + num2}');
  });
  print('함수 완료');
  return num1 + num2;
}
