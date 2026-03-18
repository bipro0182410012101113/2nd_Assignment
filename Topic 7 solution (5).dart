int checkAge(int? age) {
  return age ?? 0;
}

void main() {
  print(checkAge(25));  
  print(checkAge(null)); 
}
