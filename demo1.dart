class Car {
  String name = "Ajith";
  int age = 21;
  String? city = null;
  displa(){
    print( "My name is $name and age is $age");
  }
  Error(){
    print("error");
  }
}

main(){
  // var vehicle = Car();
  // vehicle.displa()?..Error();
  // var vehicle = Car()
  // ..displa()
  // ..Error(
  // );

  Car? vehicle = null;
  print(vehicle?.city);
}
