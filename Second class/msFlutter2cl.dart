void main()
{
  // it is nice practice to define type in initialization if you want data in fixed data type
  // if not we can use "var" to initialize
  // num data type can store both decimal values and integers basically every type of number
  // we will use $ for printing variables like ","  in java
  // dart is case sensitive
  // "/" return complete division result while"~/" will give integer division.
  // "%" will give remainder in integer based output while "/" give double type output.
  num num1 = 12;
  num num2 = 13; 
  num abc = num1 + num1;
  num bcd = num2 + abc;
  num bb = abc + num1;
  num result = bcd + bb;
  print("Num1: $num1 Num2: $num2 " );
  print("abc: $abc bcd: $bcd  bb: $bb" );
  print("Result: $result" );
  
}