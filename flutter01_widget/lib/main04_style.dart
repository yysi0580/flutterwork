import 'package:flutter/material.dart';
/*
SizeBox() : 간단한 박스
- 속성 : width, height, child 3개만 있음.
  > 많은 속성이 필요하면 Container사용
*/
void main() {
  runApp(const MyApp());
}
/*
// SizeBox() 사용
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),),
        body: SizedBox(
          // Text() 위젯에 스타일 넣어주기
          child: Text("ㅎㅇ",
            style: TextStyle(color: Color(0xFFFF8686),
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),),
        body: SizedBox(
          child: Icon(
            Icons.access_alarm_outlined,
            color: Colors.tealAccent,
            size: 50,
          )
        ),
      ),
    );
  }
}
 */
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // 버튼 스타일
  // TextButton, iconButton(), ElevatedButton()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xfff3edf7),),
        body: SizedBox(
          // child: TextButton(onPressed: () {}, child: Text('TextButton'),),
          // child: ElevatedButton(onPressed: () {}, child: Text('ElevatedButton'),),
          child: IconButton(onPressed: () {
            
          }, icon: Icon(
            Icons.g_mobiledata,
            size: 50,
            color: Color(0xffc534ff),
          ),),
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
        appBar: AppBar(
          title: Text('예제'),
          backgroundColor: Color(0xfff3edf7),
        ),
        body: Center(
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: Color(0xff000000),
              borderRadius: BorderRadius.circular(15)
            ),
            child: IconButton(onPressed: (){

            }, icon: Icon(
              Icons.favorite,
              size: 70,
              color: Color(0xffff0000)
            )),

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