import 'dart:io';

void main() async {
  File file = File('hello.txt');
  await file.writeAsString('\nRahim', mode: FileMode.append);
}