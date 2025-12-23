// named parameter : 변수 이름 병시로 파라미터 순서가 필요 없다
void main() {
  addNumbers(x:10, y:20, z:30);
  print('------------------------');
  addNumbers(y:200, x:100, z:300);
  print('------------------------');
  addNumbers2(y:200, x:100);
}
// 파라미터 넣는 곳에 {} 중괄호를 넣어주고, required를 붙인다
addNumbers({required int x,required int y, required int z}){
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  }else{
    print('$x + $y + $z = 홀수');
  }
}
// required를 뺴면 optional parameter(값이 들어와도 되고, 안들어와도 됨)임
int addNumbers2({required int x,required int y, int z = 55}){
  int sum = x + y + z;
  if(sum % 2 == 0) {
    print('$x + $y + $z = 짝수');
  }else{
    print('$x + $y + $z = 홀수');
  }
  return sum;
}