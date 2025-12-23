void main(){
  print(addNumbers1(20,y : 30,z :40));
  print(addNumbers2(20, y: 30));           // 50
  print(addNumbers3(20, z: 30));       // y 생략
  print(addNumbers3(20, y:40, z: 30));   // y 사용
/*
    3개의 파라미터(순서 동일하게)
    반환값 출력
  2개의 파라미터(positional parameter,named parameter)
    반환값 출력
  3개의 파라미터(positional parameter,optional parameter,named parameter)
    반환값 출력
 */
int addNumbers1(int x, {required int y , int z = 0}){
  int sum = x + y + z;
  if(sum % 2 == 0) {
  print('$x + $y + $z = 짝수');
  }else{
  print('$x + $y + $z = 홀수');
  }
  return sum;
}
int addNumbers2(int x, {required int y}){
  int sum = x + y;
  if(sum % 2 == 0) {
  print('$x + $y = 짝수');
  }else{
  print('$x + $y = 홀수');
  }
  return sum;
}

  int addNumbers3(int x, {required int y, int z = 0}) {
  int sum = x + y + z;

  if (sum % 2 == 0) {
    print('$x + $y + $z = $sum 짝수');
  } else {
    print('$x + $y + $z = $sum 홀수');
  }
  return sum;
}
//
// int addNumbers3(int x, {int y = 0, required int z}){
//   final sum = x + y + z;
//   if(sum % 2 == 0) {
//   print('$x + $y + $z = 짝수');
//   }else{
//   print('$x + $y + $z = 홀수');
//   }
//   return sum;
// }
int addNumbers4(int x, {required int y , int z = 0}) => x + y + z;


// 반환형은 int
// (positional parameter, named parameter, optional parameter )
// 안의 print문은 짝수, 홀수
