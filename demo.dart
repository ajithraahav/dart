
import 'dart:io';

main(){
  stdout.writeln('Type a sentence !');
  String? name = stdin.readLineSync();
  String? search_Letter = stdin.readLineSync();
  int? index = name?.indexOf('$search_Letter');
  var search_result = name?.substring(0,(index!+1));
  print(search_result);
  // if(name == ''){
  //   print('Please fill the name');
  //   name = stdin.readLineSync();
  // }
  // print('My name is $name');
}