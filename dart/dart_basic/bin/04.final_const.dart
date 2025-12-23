/*
    * final과 const
      - 공통점 : 상수, 자료형 생략 가능
      - 차이점 : final은 bulid time에서 값을 몰라도 됨
                const는 bulid time에 미리 값을 알고있어야 함
   */
void main() {
  const String name1 = 'kim';
  final String name2 = 'hong';

  DateTime? now1 = DateTime.now();
  print(now1);

  final DateTime fNow = DateTime.now();
  print(fNow);

  // const DateTime cNow = DateTime.now();// duild시 시간을 알 수 없음.
  // print(cNow);
}
/*
 * 기존 프로그램과 동일
   - +, -, *, ++, -- ,  +=, %= ...
 * 다른 것
   - 나눗셈: int / int = double
   - 몫: ~/

 * ??= : 만약 값이 null 이면 오른쪽에 있는 값을 변수에 저장하고
                  null이 아니면 왼쪽값을 저장
  // 삼항연산자처럼은 아님
*/