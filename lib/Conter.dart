import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  int _count =  0;


  int get CounterValue => _count;


  void increement(){

    _count++;

    notifyListeners();
  }



  void decreement (){

    _count--;

    notifyListeners();
  }



  void reset(){

    _count =0;

    notifyListeners();
  }



}