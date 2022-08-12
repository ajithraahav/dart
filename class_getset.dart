import 'dart:ffi';

class Student_details{
  String?  name;
  int? percent;

  void set percentage(int? marksecured){
    percent = (marksecured! ~/ 500) * 100;
  }

  int? get percentage{
   return percent;
  }
}

main(){
  var student = Student_details();
  student.name = "Ajith";
  print(student.name);

  student.percentage = 430;
  print(student.percent);
}