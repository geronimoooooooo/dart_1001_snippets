import 'dart:io';

main() {
  new File("path/to/file").openRead()
    .transform(new StringDecoder())
    .transform(new LineTransformer())
    .listen(print);  // Replace 'print' with your action.
}

//windows: C:\\Users\\dart\\text.txt

