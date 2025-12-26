/* stream : 스트림을 내가 닫을 때까지 계속 값을 받을 수 있다
          import필요

  StreamController : 스트림을 관리하는 관리자
  - stream : 스트림에 값이 들어오면 받는 역할
  - lisn
  - sink : 스트림에 값을 보내는 역할
*/

import 'dart:async';

void main() {
  final controller = StreamController<int>.broadcast();
  final stream = controller.stream;

  final sub1 = stream.listen((val) {
    print('Listener 1 : $val');
  });

  final sub2 = stream.listen((val) {
    print('Listener 2 : $val');
  });

  controller.add(1);
  controller.add(2);

  controller.close(); // 끝날 때 닫기
}

// asBroadcastStream() : 여러번 스트림 사용

