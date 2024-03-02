import 'dart:io';

void main() {
  var count = 10;
  for (var i = 1; i <= count; i++) {
    if(i<6){
        for (var j = 1; j <= i; j++) {

          stdout.write("$j ");
    
      }
    }

    else{

      for (var j = 1; j <count-i+1; j++) {

      stdout.write("$j ");
    
    }

    }
    
    
    print(" ");
  
  }

}
