void main() {
  // 1) 3개의 파라미터(순서 동일하게) -> positional 3개
  print(addNumbers1(20, 30, 40));

  // 2) 2개의 파라미터(positional, named)
  print(addNumbers2(20, y: 30));

  // 3) 3개의 파라미터(positional, optional positional, named)
  print(addNumbers3(20, z: 30));        // y 생략(기본값 0)
  print(addNumbers3(20, y:40, z: 30));    // y 사용
}

// 1) 3개의 파라미터(순서 동일하게)
int addNumbers1(int x, int y, int z) {
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('$x + $y + $z = $sum 짝수');
  } else {
    print('$x + $y + $z = $sum 홀수');
  }
  return sum;
}

// 2) 2개의 파라미터(positional, named)
int addNumbers2(int x, {required int y}) {
  int sum = x + y;
  if (sum % 2 == 0) {
    print('$x + $y = $sum 짝수');
  } else {
    print('$x + $y = $sum 홀수');
  }
  return sum;
}

// 3) 3개의 파라미터(positional, optional positional, named)
int addNumbers3(int x, {int y = 0, required int z}) {
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('$x + $y + $z = $sum 짝수');
  } else {
    print('$x + $y + $z = $sum 홀수');
  }
  return sum;
}

// 에로우 함수 예시(표현식 1개 반환일 때만 가능)
int addNumbers4(int x, {required int y, int z = 0}) => x + y + z;
