import 'dart:async';
/*void main() {
  calculate(5);
  calculate(2).listen((val){
    print(calculate(2));
  });

}
Stream<int> calculate(int num) async* {
  for(int i=0;i<10;i++){
    yield i*num;
  }
  await Future.delayed(Duration(seconds: 1));
}*/

// Stream<int> calculate(int num) async* {
//   for(int i=0;i<10;i++){
//     yield i*num;
//   }
// }
void main() async{
  print("카운트 시작");
  await for(int value in countStream()){
    print(value);
  }
  // playAllStream().listen((val) {
  //   print(val);
  // });
  print('카운트 완료');
}


Stream<int> playAllStream() async* {
  yield* calculate2(1);

}
Stream<int> countStream() async* {
  for(int i=5;i>0;i--){
    await Future.delayed(Duration(seconds:1));
    yield i;
  }
}

Stream<int> calculate2(int num) async* {
  for(int i=5;i>0;i--){
    await Future.delayed(Duration(seconds:1));
    yield i;
  }
}