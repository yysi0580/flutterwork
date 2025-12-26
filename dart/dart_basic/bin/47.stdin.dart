// stdin : 콘솔에 입력 받기
//         - readLineSync() : 사용자로부터 입력받기, String 형
// stdout : 콘솔에 출력 하기

import 'dart:convert';
import 'dart:io';
import 'dart:math';

// void main() {
//   // print('이름을 입력하세요 : ');
//   stdout.write('이름을 입력하세요 : ');
//   String? name = stdin.readLineSync();
//   print('입력한 이름 : $name');
//
//   stdout.write("학번을 입력하세요(숫자로) : ");
//   String? number = stdin.readLineSync();
//   int stNum = int.parse(number!);
//   print(stNum);
//   stdout.write('두 숫자 입력(공백으로 구분) : ');
//   String? input = stdin.readLineSync();
//   List<String> value = input!.split(' ');
//   int inputA = int.parse(value[0]);
//   int inputB = int.parse(value[1]);
//
//   print('합계 : ${inputB + inputA}');
//
//   int rand1 = Random().nextInt(3);
//   stdout.write("학번을 입력하세요(숫자로) : ");
//   int rand1 = Random().nextInt(3);
// }
void main() {
  stdout.write('가위(0), 바위(1), 보(2): ');
  final input = stdin.readLineSync();

  final user = int.tryParse(input ?? '');
  if (user == null || user < 0 || user > 2) {
    print('잘못된 입력');
    return;
  }

  final computer = Random().nextInt(3);

  print('유저: ${toStr(user)}');
  print('컴퓨터: ${toStr(computer)}');

  switch (user - computer) {
    case 0:
      print('무승부');
      break;
    case -1:
    case 2:
      print('유저 승');
      break;
    default:
      print('컴퓨터 승');
  }
}

String toStr(int n) => ['가위', '바위', '보'][n];