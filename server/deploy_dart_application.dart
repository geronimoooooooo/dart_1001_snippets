https://groups.google.com/a/dartlang.org/forum/?fromgroups#!topic/misc/nUBIYrNfcbI


I have developed some small console applications in Dart and I want to use them in an other computer 
which doesn't have Dart installed. What is the minimum installation I need to run these console applications? 
Or better, what are the files needed to run these applications?
---------------------

I would install the Dart SDK (http://www.dartlang.org/tools/sdk/) which is just the command-line tools.

Then, for your app, use this command to create a single .dart file that contains everything you need for the app.

dart2js --output-type=dart --minify -oapp.complete.dart app.dart

This is the fabled "dart2dart" which takes a Dart app, tree shakes it, minifies it, and generates a 
single .dart file ready to go. This is nice because it pulls in dependencies like 3rd party libraries 
(and tree shakes it to eliminate the unused parts) so you don't need to run 'pub install' on the target machine.


You'll want the Dart VM and your tree-shaken Dart file.

