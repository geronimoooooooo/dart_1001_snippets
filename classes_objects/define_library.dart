Importing your own created libraries.
You will be importing the filename.dart and not the name of your library.
So if the name of your library is: myLib and it is saved in the file: someDartFile.dart you will have to

#import('someDartFile.dart')
If you have on Windows a library at: K:\SomeDir\someFile.dart you will need to write:

#import('/K:/SomeDir/someFile.dart');
Occurring order in code is important:

#library //declaring a file as a library
#import
#source //grabbing / including the code of another file
An example.

#import 'myLib.dart';

void main(){

  //a class from myLibrary in the testLib.dart file
  SomeClassFromMyLibrary some = new SomeClassFromMyLibrary(); 
  print("This is a number from myLibrary ${some.giveMeSomeNumber()}");

  SomeWhereElseFile someWhere = new SomeWhereElseFile();
  print("main:  ${someWhere.whereAreYou()}");
}
 

library lib1;

import 'dart:math';
import 'nyLib2.dart';

class SomeClassInLibrary{
  
  AnotherClassInDifferentLib another = new AnotherClassInDifferentLib();
  
  String someMethod() =>"this is some method";
  
  int generateNumber(){
    Random random = new Random();
    int number = random.nextInt(101);
    return number * another.giveCount;
  }
}

library lib2;

class AnotherClassInDifferentLib{
  
  num _count = 100;
  
  num get giveCount =>  _count;
}
