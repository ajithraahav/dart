// import 'dart:core';  It is not necessary to import it will automatically imported.
import 'dart:io';

demo(){
 int number = 10;
//  print(number ??= 100);
 print(number);
}
stringConcat() {          //concat strig and print
  var firtsname = "Ajith";
  String lastname = "Raahav";
  print(firtsname + ' ' + lastname);
}

getName(){
  stdout.writeln('What is your name ?');
  String? name = stdin.readLineSync();
  if(name == ''){
    print('Please fill the name');
    name = stdin.readLineSync();
  }
  print('My name is $name');
}

cosntVal(){
  const str = 'Ajith';
  const num = 12;

  print(str);
  print(num);
  print(str.runtimeType);
  print(num.runtimeType);
}

listString(){
  List names = ['Ajith', 'Pratheep', 'Gobi'];
  var car = ['audi', 'benz', 12, 14, 17];
  List <String> bike = const ['pulsar', 'apache', 'scooty', 'r15', 'Hero', ];

  names[2] = 'Sanjay';   //It can be the list value
  // bike[0] = 'tvs';    //But here we can't change the value because of const
  var names2 = names;

  var bikes = [...bike];
  print(bikes);

  for(var nam in names2){
    print(nam);
  }
}

createSet(){
  var emptyMap = {};        //It did not creates a empty set it creates a empty map only 
  var emptySet = <String>{};  // If you want the empty set give type to te set.
  Set <String> typeSet= {};   //In this we define the type to the set.

  print(typeSet.runtimeType);
  print(emptySet.runtimeType);
  print(emptyMap.runtimeType);

  var country = {'India', 'Africa', 'Nepal'};
  for(var x in country){
    print(x);
  }
}

createMap(){
  var car = {
    'name': 'bmw',    
    'color': 'red',
    'tyre': 'four'
  };
  print(car['name']);

  var bike = Map();       //creating empty map
  bike['name'] = 'Apache';
  print(bike['name']);
}

createFunction(){
  dynamic square(var num){   //this function is dynamic so it can return any type of num value
    return num * num;
  }
  // dynamic square (var num) => num * num;   //It is the arrow funciton which give the same answer

  dynamic sum(var num1, {var num2}) => num1 + num2;
  print(sum(10, num2: 2));

  //optinal parameter
  dynamic sub(var num1, [var num2]) => num1 - (num2 ?? 0 );
  print(sub(2));
  print(sub(50,4));

  void output(var msg){
    print(msg);
  }
  output(square(2));
  output(square(2.5));
  print(square.runtimeType);  //output - (dynamic) => dynamic
}
/*CLASSES*/

  class person{
    String? name;
    int? age;

    // person(String name, [int age = 18]){   //constructor
    //   this.name = name;
    //   this.age = age;
    // }
    person(this.name, [this.age = 18]); //constructor

    person.guest(){                //named constructor
          name = 'tarani';
          age = 23;
    }

  void showOutput(){    //methods
    print(name);
    print(age);
  }
  }
createClass(){
  person person1 = person('Ajith', 21);
  // person1.name = 'Ajith';
  // person1.age = 21;
  person person2 = person('Pratheep');
  person person3 = person.guest();

  person1.showOutput();
  person2.showOutput();
  person3.showOutput();
}

class X{
  final name;
  static const int age = 10;
   X(this.name);
}
createClass2(){
  var x = X('Ajith');
  print(x.name);
  print(X.age);
}
/*CLASS INHERITANCE*/
class Vehicle{
  String? model;
  int? year;

  Vehicle(this.model, this.year){
    print(this.model);
    print(this.year);
  }
  void output(){
    print(model);
    print(year);
  }
}
class Car extends Vehicle{
  double? price;

  Car(String model, int year, this.price): super(model, year);    //add super keyword to use the inherited variables.
  void output(){
    super.output();
    print(this.price);
  }
}
classInheritance(){
  var Car1 = Car('Audi', 2014, 150000);
  Car1.output();
}
/*METHOD OVER RIDING  */
class A {
  String? name;
  A(this.name);
  
  void showOutput(){
    print(this.name);
  }

  dynamic square( dynamic val){
    return val * val;
  }
}
class B extends A{
  B(String name) : super(name);

  @override
  void showOutput(){
    print(this.name);
    print('Hello');
  }
}
void main(){
  // demo();
  //stringConcat(); //String concatenation
  getName();      //Get name and display the name
  // cosntVal();    //view the const type
  // listString();
  // createSet();
  // createMap();
  // createFunction();
  // createClass();
  // createClass2();
  // classInheritance();
}