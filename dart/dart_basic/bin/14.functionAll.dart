void main(){
  addNumbers1(20,y : 30,z :40);
  addNumbers2(20,y :30);
  addNumbers3(20,z :30,y:40);

}
/*
    3개의 파라미터(순서 동일하게)
    반환값 출력
  2개의 파라미터(positional parameter,named parameter)
    반환값 출력
  3개의 파라미터(positional parameter,optional parameter,named parameter)
    반환값 출력
 */
void addNumbers1(int x, {required int y , int z = 0}){
  int sum = x + y + z;
  if(sum % 2 == 0) {
  print('$x + $y + $z = 짝수');
  }else{
  print('$x + $y + $z = 홀수');
  }
}
void addNumbers2(int x, {required int y}){
  int sum = x + y;
  if(sum % 2 == 0) {
  print('$x + $y = 짝수');
  }else{
  print('$x + $y = 홀수');
  }
}
void addNumbers3(int x, {int y = 0, required int z}){
  int sum = x + y + z;
  if(sum % 2 == 0) {
  print('$x + $y + $z = 짝수');
  }else{
  print('$x + $y + $z = 홀수');
  }
}



// 반환형은 int
// (positional parameter, named parameter, optional parameter )
// 안의 print문은 짝수, 홀수
