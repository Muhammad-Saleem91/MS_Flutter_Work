void main(){
  bool abc = 10!=10;
  print("Condition: $abc");

  bool isEmailValid = true;
  bool isPasswordValid = false;

  bool check =  (isEmailValid && isPasswordValid);
  print(check);
  
  bool check2 =  (isPasswordValid ||isEmailValid );
  print(check2);

  var name = "Muhammad Saleem";
  int age = 19;
  bool isEliggibleForLicense = !(age < 18);
  print("$name is Eligible for license:  $isEliggibleForLicense");



  // example 
  var num1 = 5; 
  var num2 = 3;
  var num3 = 6;

  var result1 = num1 > num3; //false
  var result2 = num2 <= num2; //true
  var result3 = result1 || !result2; // false -- false --> false
  var result4 = !(result3 && !result1); // !(false -- !true) --> true

  var result = !result4 || result4; // false -- true --> true
  print(!result); //--> false
  
}