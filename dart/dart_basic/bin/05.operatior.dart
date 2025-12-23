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

void main() {
  int num1 = 4;
  int num2 = 2;
  // int result = num1 / num2; // 오류 : 결과는 무조건 double형
  double result = num1 / num2;
  print(result);

  int num3 = 3;
  print('몫 : ${num1 ~/ num3}');

  int? num4 = 2;
  print(num4);

  num4 = null;
  print(num4);

  num4 ??= 5; // num4가 null이므로 num4에 5의 값을 넣음
  print(num4);
  num4 ??= 20; // num4에 5가 들어있으므로 왼쪽의 값(원래 변수의 값 5)를 넣어
  print(num4);
  num4 ??= 5;
  print(num4);

/*
? : 자료형에 붙여줌. null값 허용
?? : 변수에 붙여줌 null일 때 기본값 제공(원본 안바뀜)//변수의 값이 변하지 앖음
??= : 변수에 붙여줌 null일 때 기본값 제공(원본 안바뀜) // 변수에 값을 저장(null이면 오른쪽의 값을 그렇지 않으면 왼쪽의 값을)
 */

}