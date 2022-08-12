class Car{
  String model;
  int Year;
  String name;

  Car(this.model, this.Year, this.name);


  display(){
    print('$name is the owner the $model car in $Year');
  }
  nameOFowner(){
    print(name);
  }
  carName(){
    print(model);
  }
  yearOfmodel(){
    print(Year);
  }
}


void main() {
  // Cascading notation method
  var car = Car('Audi', 2001, 'Ajith')..display()..carName()..nameOFowner()..yearOfmodel();
  
  // Normal method
  // var car1 = Car('BMW', 1999, 'Pratheep');
  // car1.display();
  // car1.carName();
  // car1.nameOFowner();
  // car1.yearOfmodel();  
/*-------------------------------------------------- */
// Error
// var sb = StringBuffer();    
// sb.write('foo')   // here when the first method return values only it can run.
// ..write('bar');
/*---------------------------------------------- */
}