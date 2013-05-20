void main(){

  Animal a = new Animal();
  var x=a.outer();
  print(x); // fail: Closure: () => Dynamic
  num number =x();
  print(number);
  Test t = new Test();
  print(t.someField);
  t.someFunction();
  t.someFunction2();
}

class Animal{
  var someString ="this is string;";

  Function outer(){ //Type has to be Function!!
    print( someString);
    var funString = "this is outerscope closure";

    var innerFunc=(){
      print("this is innerFunct: ${someString} with $funString");
      return 42;
    };

    return innerFunc;
  }
}

  class Test{
    var someField = "someField";
    var someFunction = () => print("someFunction");
    var someFunction2 = (){
      print("somefunction2");
     };
    }
