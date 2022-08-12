/*
1. ON Clause
2. Catch Clause with Exception Object
3. Catch Clause with Exception Object and StackTrace Object
4. Finally Clause
5. Create our own Custom Exception
*/


void main(){
  print("CASE1"); 
  // case 1 when you know the exception to be thrown, use ON clause 
  try{
    int result = 12 ~/ 0;
    print(result);
  }
  on IntegerDivisionByZeroException{ 
    print("Cannot divided by zero");
  }

  print(" "); print("CASE2");
  // CASE 2: When you don't know the exception use CATCH Clause
  try{
    int result = 12 ~/ 0;
    print(result);
  }
  catch(e){
    print("The exception thrown is $e");
  }
  
  print(" "); print("CASE3");
  // CASE 3: Using STACK TRACE to know the events occured before exception was thrown
  try{
    int result = 12 ~/ 0;
    print(result);
  }
  catch(e, s){
    print("The exception thrown is $e");
    print("Stack Traace \n $s");
    // rethrow;
  }

  print(" "); print("CASE4");
  // CASE 4: Whether there is an exception or not, FINALLY clause is alway executed  
  try{
    int result = 12 ~/ 0;
    print(result);
  }
  catch(e){
    print("The exception thrown is $e");
  }
  finally{
    print("This is finally clause and it will always exected");
  }

  print(" "); print("CASE5");
  // CASE 5: 
  try{
    depositMoney(-200);
  }
  on DepositException catch(e){
    print(e.errorMessage());
  }
  finally{
    print("Succes");
  }
}

class DepositException {
  String errorMessage(){
    return 'You cannot enter amount lesser than zero !';
  }
}

void depositMoney(int amount){
  if(amount < 0){
    throw DepositException();
  }
}