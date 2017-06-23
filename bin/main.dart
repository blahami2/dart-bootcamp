// Copyright (c) 2017, blaha. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:DartAcademyBootCamp/DartAcademyBootCamp.dart' as DartAcademyBootCamp;

main(List<String> arguments) {
  // types
  var a = 6/5;
  int b = (6/5).floor(); // everything is object
  num b2 = 6/5; // decimal or integer
  double b3 = 6/5;
  bool b4 = true;
  num b5 = 9999999999999999999999999999999999999999; // sky is the limit
  String c = "text";
  List<int> numbers = [1, 2, 3, 4, 5, 6]; // shortcut for list definition, GrowableList is used as the default implementation
  Map<int, int> map = {1: 1, 2: 2, 3: 3}; // LinkedHashMap as the default implementation
  print("$a $b $b2 $b3 $b4 $c $numbers $map $b5");
  // operators
  int x = 6;
  x += 12;
  x++;
  print("${++x} = 20");
  // String
  String d = "text";
  String e = '"text"';
  String f = r'\text';
  String g = "text";
  print("$d $e $f ${g.toUpperCase()[2]}"); // ${} interpolated expression
  // other
  print('Hello world: ${DartAcademyBootCamp.calculate()}!');
  print("The result is $x");
  print("Alternative result is ${1/5}");
  print("Some recursion of print: ${print("printing print inside print")}");
  print(5 / 3);
}
