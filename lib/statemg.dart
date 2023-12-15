import 'package:flutter/material.dart';

class Logic extends ChangeNotifier {
  List taskname = [
    ['Code', false,true],
    ['Namaz', true,true],
    ['Sleep', false,true],
  ];
  void changechecked(int index, bool newChecked) {
    taskname[index][2] = newChecked;
    notifyListeners();
  }
}
