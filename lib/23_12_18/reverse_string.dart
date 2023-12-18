void main(){
  String s = 'hello';
  print(reverseString(s));
}

String reverseString(String s) {
  String reversedString = s.split('').reversed.join();
  return reversedString;
}