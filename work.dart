import 'dart:io';

void main(){
  // print('Enter your name');
  // var name = stdin.readLineSync();
  // print('Enter your age:');
  // int age = stdin.readByteSync();
  // print('hello $name your are $age years old');
   print('Enter your number:');
  int num = stdin.readByteSync();
  if (num%2==0) {
    print('$num is an even number.');
  } else{
    print('$num is an odd number.');
  }
}
