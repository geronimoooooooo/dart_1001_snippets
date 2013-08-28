import 'dart:json' as JSON;
import 'package:json_object/json_object.dart';

void main(){
  String json = 
'''
  {
  "k1":"v1",
  "list": ["uno","due"],
  "mapDict": {"k1":"v1","k2":"v2"}
  }      
''';
  print(json);
  Map data = JSON.parse(json);
  print(data["k1"]);
  print("data[\"list\"][1]: "+data["list"][1]);
  
  JsonObject jo = new JsonObject.fromJsonString(json);
  print("jo.k1 mit JsonObject: "+jo.k1);
  print(jo.list[0]);
  jo.list.forEach((e)=>print("liste:" +e));
  jo.mapDict.forEach((key, value) => print("$key=$value")); 
 
  jo.addAll({"k2":"v2"}); //add new kv element
  jo.list.add("tri");// add new element to list
  jo.mapDict.addAll({"k3":"v3"});
  
  print(jo);
  if(jo.toString().contains("k2"))
    print("fasdf");
}
