class Vehicle{
  String model;
  int year;

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
  double price;

  Car(String model, int year, this.price): super(model, year);    //add super keyword to use the inherited variables.
  void output(){
    super.output();
    print(this.price);
  }
}
main(){
  var Car1 = Car('Audi', 2014, 150000);
  Car1.output();
}