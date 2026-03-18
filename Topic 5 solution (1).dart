import 'dart:io';

void main() async {
  String name = "Bipro Kumar Das";
  File file = File('hello.txt');
  await file.writeAsString('$name\n', mode: FileMode.append);
}