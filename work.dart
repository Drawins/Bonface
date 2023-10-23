import 'dart:io';

void main(){
  print('Enter your name');
  var name = stdin.readLineSync();
  print('Enter your age:');
  int age = stdin.readByteSync();
  print('hello $name your are $age years old');
}
