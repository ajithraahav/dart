/*
1.Default constructor
2.Parameterized constructor
3.Named constrcutor
you cannot have parameterized constructor and default constrcutor at the same time 
you can use multiple named construcors
*/

class Student_details{
  int? id;
  String? name;

  // Student_details(){
  //   print("Default constructor");        //default constructor
  // }
  Student_details(this.id, this.name){   //paramterized constructor                  
    print(" ");
  }
  Student_details.mycustomConstructor(){      //default constructor
    print("This is my custom constructor");   
  }

  void study(){
    print("${this.name} is now studyinhg");
  }
  void sleep(){
    print("${this.name} is now sleeping");
  }
}

void main(){
  var student1 = Student_details(01, "Ajith");
  print("${student1.id} and ${student1.name}");
  student1..study()..sleep();

  var student2 = Student_details(02, "Vijay");
  print("${student2.id} and ${student2.name}");
  student2..study()..sleep();
}