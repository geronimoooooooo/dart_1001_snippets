<html>
  <body>
    <ul>
      <li>Using identifiers: var x = {{x}} and var y = {{y}}</li>
      <li>Calling a method: {{x}} in hex is {{x.toRadixString(16)}}</li>
      <li>Calling functions: (x ~/ y) = {{intDivision()}} and (x / y) = 
        {{doubleDivision().toStringAsPrecision(4)}}</li>
      <li>Using a getter: {{cityNameAsChars}}</li>
      <li>Using string interpolation: {{'city = ${city.toUpperCase()}'}}</li>
      <li>Using a raw string: {{r'$city'}}</li>
    </ul>

    <script type="application/dart">
      import 'package:web_ui/web_ui.dart';

      num x = 32;
      num y = 3;
      String city = 'Boston';
      
      int intDivision() => x ~/ y;
      double doubleDivision() => x / y;
      
      List<String> get cityNameAsChars => city.split(''); 

      void main() {}
    </script>
  </body>
</html>
