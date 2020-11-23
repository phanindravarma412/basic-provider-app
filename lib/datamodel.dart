import 'package:flutter/material.dart';

class DataModel with ChangeNotifier{

  int count = 0;

  void increaseValue(){
    print('function was called');
    count++;
    print('the value of count is $count');
    notifyListeners();
  }
}