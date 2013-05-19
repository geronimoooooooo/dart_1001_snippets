  Future future = f2.readAsString(encoding: ASCII);
  future.then((content) {
          print(content); 
          throw("this is error in first then: ");
          })
        .then((k)=>print(k+" 2nd then"))
        .catchError((e)=>print(e.toString()+"catchError"));
  
  
  //this is file2
  //this is error in first then: catchError
