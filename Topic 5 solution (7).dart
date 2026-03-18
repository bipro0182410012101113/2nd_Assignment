import 'dart:io';

void main() async {
  List<List<String>> students = [
    ['Name', 'Age', 'Address'],
    ['Bipro', '22', 'Kaliganj, Bangladesh'],
    ['Rahim', '21', 'Dhaka, Bangladesh'],
    ['Karim', '23', 'Chittagong, Bangladesh']
  ];

  File file = File('students.csv');
  String csvData = students.map((row) => row.join(',')).join('\n');
  await file.writeAsString(csvData);

  print('CSV file created successfully.');

  String content = await file.readAsString();
  print('\nCSV file content:');
  print(content);
}