import 'package:flutter/material.dart';

class CountProvider  extends ChangeNotifier{
List num=[1,2,3,4,5,];


void addNumber(){
  num.add(num.last+1);
  notifyListeners();
}
}
