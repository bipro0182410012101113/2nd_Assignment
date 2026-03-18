import 'dart:io';

void main() async {
  File file = File('hello_copy.txt');
  if (await file.exists()) {
    await file.delete();
    print('File deleted successfully.');
  } else {
    print('File does not exist.');
  }
}