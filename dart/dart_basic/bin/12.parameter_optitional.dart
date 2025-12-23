// optional paraveter : 있어도 되고 없어도 되는 파라미터. 대괄호를
void main() {
  addNumbers(20);
  addNumbers(20, 52, 34);
}

addNumbers(int x, [int? y, int? z]){
  y ??= 0;
  z ??= 0;
  int sum = x + y + z;
}

addNumbers2(int x, [int y = 0, int z = 0]){
  int sum = x + y + z;

  if(sum% 2 == 0) {
    print('$x + $y + $z = 짝수');
  } else {
    print('$x + $y + $z = 홀수');
  }
}