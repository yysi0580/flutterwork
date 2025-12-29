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

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),), // top부분
        body: Container(
          width: 100,
          height: 100,
          color: Colors.orangeAccent,
          // margin: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
          padding: EdgeInsets.all(20),
          child: Text('본문 박스에 글씨 넣기'),
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
}*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),),
        body:  Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
            padding: EdgeInsets.all(10),
            child: Text('본문 박스에 글자 씀'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.ac_unit),
              Icon(Icons.adb),
              Icon(Icons.account_balance),
            ],
          )
        ),
      )// top부분,
    );
  }
} */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),),
          body:  Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // width: 100,
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
              padding: EdgeInsets.all(10),
              child: Text('본문 박스에 글자 씀'),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(Icons.ac_unit),
                  Icon(Icons.adb),
                  Icon(Icons.account_balance),
                ],
              )
          ),
        )// top부분,
    );
  }
}


