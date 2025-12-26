// 함수에 반드시 async넛고. Future앞에는 await를 넣는다
void main() async {
  await addNumbers1(1, 1);
  await addNumbers1(2, 2);
  print(await addNumbers2(3, 3));
}
Future<void> addNumbers1(int num1, int num2) async {
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
