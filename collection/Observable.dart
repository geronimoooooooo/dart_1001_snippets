class Fail extends Object with ObservableMixin{
  
  Fail(){
    ol.changes.listen((result){
      notitfyProperts(this, const Symbol('yo'));
    }
    );
  }
  final ObservableMap om = toObservable({});
  //Represents an observable list of model values. If any items are added, removed, or replaced, then observers that 
  //are listening to [changes] will be notified.
  final ObservableList ol = toObservable([]);
  
  String get yo {
    print("you");
  }  
