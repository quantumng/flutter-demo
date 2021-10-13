import 'dart:async';

void main(List<String> args) async {
  print('Hello World');
  test();
  printArray();
  // print(await getStringAsync());
  // varTest();
  throwErr();
}

var a = ['a', 1, false];
var b = 'jack';
var c = true;
var d = 5;
var e = 5.1164416541;
var f = [1, 2, 3];
var g = ['a', 'b', 'c'];
var h = {
  'a': 1,
  'b': 2,
};

void test() {
  int? h;
  h ??= 4;
  print(h);
}

void printArray() {
  var numbersByTwo = const [1, -2, 3, 42].map((number) => number * 2);
  print('Numbers: $numbersByTwo');
}

Future<String> getStringAsync() async {
  var str = await fetchString('aaaaaa');
  return 'the string is $str';
}

Future<String> fetchString(String str) =>
    Future.delayed(const Duration(seconds: 1), () => str);

void varTest() {
  Set<int> k = {1, 2, 3};
  k.add(4);
  k.add(2);
  print(k);
}

Never throwErr() {
  Future.delayed(
      const Duration(seconds: 2), throw TimeoutException('time out'));
}
