// Copyright (c) 2017, blaha. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:DartAcademyBootCamp/DartAcademyBootCamp.dart' as DartAcademyBootCamp;
import 'package:args/args.dart';

ArgResults argResults;

void cmdApp(List<String> arguments) {
  ArgParser parser = new ArgParser()
    ..addFlag('line-number', negatable: false, abbr: 'n');
}

class Point {
  num x;
  num y;

  Point(this.x, this.y); // maps directly to properties

  Point.from3D(this.x, this.y, z); // names constructor

  Point operator +(Point p){
    return new Point(x + p.x, y + p.y);
  }
}

const CONSTANT = 10;

void main(List<String> arguments) {
  print("************************ TYPES ************************");
  var a = 6 / 5;
  int b = (6 / 5).floor(); // everything is object
  num b2 = 6 / 5; // decimal or integer
  double b3 = 6 / 5;
  bool b4 = true;
  num b5 = 9999999999999999999999999999999999999999; // sky is the limit
  String c = "text";
  List<int> numbers = [1, 2, 3, 4, 5, 6
  ]; // shortcut for list definition, GrowableList is used as the default implementation
  Map<int, int> map = {
    1: 1,
    2: 2,
    3: 3
  }; // LinkedHashMap as the default implementation
  print("$a $b $b2 $b3 $b4 $c $numbers $map $b5");
  print("************************ OPERATORS ************************");
  int x = 6;
  x += 12;
  x++;
  print("${++x} = 20");
  print("integer division: ${5 ~/ 2}");
  var a1 = null;
  a1 ??= 5;
  var a2 = 1;
  a2 ??= 5; // assign only if a2 is null
  print("$a1 != $a2");
  // cascade operator -> operate on the same object for all the request (does not have to return this)
  print("string"
    ..substring(2)
    ..toString()); // should print the whole string
  String str = null;
  print(str?.toUpperCase()); // does not throw nullpointer -> optional .
  print("************************ STRING ************************");
  String d = "text";
  String e = '"text"';
  String f = r'\text';
  String g = "text";
  print("$d $e $f ${g.toUpperCase()[2]}"); // ${} interpolated expression
  print(
      "************************ CONDITIONS AND BOOLEAN OPERATORS ************************");
  print("${"text" is String}");
  // pretty much the same as in Java
  if ("text" == 'text') {
    print("equal!");
  } else if ("text" != "text") {
    print("somewhat equal");
  } else {
    print("not equal!");
  }
  var h = "text";
  var m = "text";
  switch (h) {
  //case m: must be constant
    case "text":
    case "other_text":
      print("$h is either text or other_text");
      break;
    default:
    // default stuff
  }
  print("************************ MODULO ************************");
  print("${5 % 3} ${0 % 3} ${-5 % 3}"); // works properly for negative numbers
  print("************************ LOOPS ************************");
  while (a < 3) {
    print("${a++}");
  }
  do { // do at least once
    print("${a++}");
  } while (a < 5);
  for (num i = 0; i < 2; i++) {
    print("$i");
  }
  print("************************ OTHER ************************");
  print('Hello world: ${DartAcademyBootCamp.calculate()}!');
  print("The result is $x");
  print("Alternative result is ${1 / 5}");
  print("Some recursion of print: ${print("printing print inside print")}");
  print(5 / 3);
  cmdApp(arguments);
}

void printHeader(String header) {
  print("************************ $header ************************");
}
