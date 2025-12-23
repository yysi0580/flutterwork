// 함수 반환형을 쓰지 않으면 void를 생략한 것

void main() {
  addNumber2(1,2,3); // 합계는 짝수, 합계는 홀수
  
}

void addNumbers(){
  print('addNumbers 실행');
}

// 3개의 숫자를 변수에 넣고 모두 더한 것이 짝수인지 홀수인지 알려주는 함수
void addNumber2(int x,int y,int z) {
  if((x + y + z) % 2 == 1){
    print("홀수");
  }else{
    print("짝수");
  }
}