deleteAll.onClick.listen((e) =>toDoList.children.clear());

deleteAll.onClick.listen((e) {
  toDoList.children.clear();
});

void main() {
  ...
  deleteAll.onClick.listen(deleteAllElements);
}

void deleteAllElements(Event e) {
  toDoList.children.clear();
}
-------------------------------------------------------
 class Test{
    var someField = "someField";
    var someFunction = () => print("someFunction");
    var someFunction2 = (){
      print("somefunction2");
     };
    }
    
  Test t = new Test();
  print(t.someField);
  t.someFunction();
  t.someFunction2();
