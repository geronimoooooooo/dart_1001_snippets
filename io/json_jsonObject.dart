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
  
  Map map2 =  new Map();
  map2["e1"]="ele1";
  map2["e2"]="ele2";
  map2["mapdict"]= new Map();
  map2["mapdict"]["f1"]="foo1";
  String str_map = JSON.stringify(map2); //transform map to json string
  print("this is map: $map2"); //+map2 will not work
  print("this is json from map: "+str_map);
}
