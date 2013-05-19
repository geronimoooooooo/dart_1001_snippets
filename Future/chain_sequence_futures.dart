expensiveA().then((aValue) => expensiveB()) 
            .then((bValue) => expensiveC()) 
            .then((cValue) => doSomethingWith(cValue));
