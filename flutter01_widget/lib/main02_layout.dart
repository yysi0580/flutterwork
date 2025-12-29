import 'package:flutter/material.dart';
/*
* Layout
  - Scaffold(): 화면을 top, body, bottom으로 나누어줌
  - Row(): 위젯들을 가로로 배치
  - Column(): 위젯들을 세로로 배치
*/
void main() {
  runApp(const MyApp());
}
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱 제목'), backgroundColor: Color(0xfff3edf7),), // top부분
        body: Text('본문 내용'),   // body : 필수
        bottomNavigationBar: BottomAppBar(child: Text('하단바')),
      ),
    );
  }
}*/

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        body: Row(
          // 메인축 정렬
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // 메인의 반대축 정렬
          // crossAxisAlignment: CrossAxisAlignment.center, // 안되는 이유는 icon의 높이 만큼만 자리차지하기 때문
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.adb),
            Icon(Icons.account_balance),

         ],
        ),
      ),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),), // top부분
        body: Center(
          child:
            Text('본문 내용임'),
        ),
        bottomNavigationBar: BottomAppBar(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.adb),
            Icon(Icons.account_balance),
          ],
        )),
      )
    );
  }
}


