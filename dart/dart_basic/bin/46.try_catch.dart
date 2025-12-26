/*
* 예외 처리
  - finally : 코드에 return tlqkf
* */

/*void main () {
  int num = 10;
  print(num/ 0);// 오류가 안나고 Infinity로 나옴
  try {
    print(num ~/ 0);
  } catch(e,stack) {
    print('오류 메시지 : $e');
    print('stact에 들어있는 오류 전체 : $stack');
  }finally{
    print('finally 구문');
  }
  print('main 끗');
}*/
// on 오류의 메시지를 알고있을 때
// void main() {
//   int num = 10;
//   try {
//     print(num ~/ 0);
//   } on UnimplementedError catch(e){
//     print('~/ 해당 연산자는 0으로 나눌 수 없다');
//   } on TypeError catch(e) {
//     print('타입이 맞지 않음');
//   } catch(e) {
//     print('오류 발생 : $e');
//   }finally{
//     print("종료");
//   }
// }
void main(){
  try{
  // tjoeun();
  //   throw CustomException("CustomException을 발생시킴");
  }catch(e) {
    print('오류 $e');
  }
}
void tjoeun() {
  try {
    throw Exception('오류발생시킴!!');
  } catch(e){
    rethrow;
  }
}
// 사용자 정의 예외 클래스
//
// class CostomExcepion implements Exception {
//   try {
//   throw Exception('오류발생시킴!!');
//   } on CostomExcepion catch(e){
//     rethrow;
//   }
// }