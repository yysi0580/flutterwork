// pattern Matching : 자료형 매칭
void main() {
  final minJi = ('민지', 20);
  final (name as String, age as int) = minJi;
  // final (name as String, age as int) = minJi;
  print(name);
  print(age);
  switcher('abc');
  switcher(['1','2']);
  switcher([1,2]);
  switcher([1,2,3]);

  switcher(['1','2','3']);
  switcher(['1','2','3','4']);

  switcher(['1','2','3','4',5,6,7,8,9,10]);
}

void switcher(dynamic anything){
  switch(anything){
    case 'abc' :
      print('match : abc');
    case ['1','2'] :
      print('match : ["1","2"]');
    case [_,_,_]:
      print('match : [_,_,_]');
    case [int a, int b]:
      print('match : [int : $a, int : $b]');
    case [final a,final b,final c,...var rest]:
      print('match : [final : $a, final : $b, final : $c rest : $rest]');
    case < 10 && > 5 :
      print('match : 5보다 크고, 10보다 작은 수');
    default :
      print('no match');
  }
}