//http://www.dartlang.org/articles/using-future-based-apis/#calling-multiple-functions-that-return-futures

Future.wait([expensiveA(), expensiveB(), expensiveC()])
      .then((List responses) => chooseBestResponse(responses))
      .catchError((e) => handleError(e));
    
