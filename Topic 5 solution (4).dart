import 'dart:io';

void main() async {
  File source = File('hello.txt');
  await source.copy('hello_copy.txt');
}