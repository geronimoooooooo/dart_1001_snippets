  var options = new Options();
  File file = new File(options.script);
  File f = new File("C:\\Users\\bin\\text.txt");
  Future<String> finishedReading = f.readAsString(encoding: ASCII);
  
  finishedReading.then((text)=>print(text));

-----------------------------------------------------------------
import 'dart:io';
import 'dart:async';
void main() {

  
  File f2 = new File("text2.txt");
  f2.writeAsStringSync("this is file2\n", mode: APPEND, encoding: ASCII);
  
  Future future = f2.readAsString(encoding: ASCII);
  future.then((content)
      {
        print(content);
      });
}
