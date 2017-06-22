// Copyright (c) 2017, blaha. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:DartAcademyBootCamp/DartAcademyBootCamp.dart' as DartAcademyBootCamp;

main(List<String> arguments) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  Map<int, int> map = {1: 1, 2: 2, 3: 3};
  print(numbers);
  print(map);

  print('Hello world: ${DartAcademyBootCamp.calculate()}!');
  int x = 6;
  x += 12;
  print("The result is $x");
  print("Alternative result is ${1/5}");
  print("Some recursion of print: ${print("printing print inside print")}");
  print(5 / 3);
}
