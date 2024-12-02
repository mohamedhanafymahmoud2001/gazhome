import 'package:flutter/material.dart';
import 'package:gazhome/provider/api.dart';
import 'package:hive/hive.dart';

class Control extends ChangeNotifier {
/////User 
  Api api = new Api();
  late Box languagebox = Hive.box("language");
  choseLanguage(String lan) {
    languagebox.put("language", "$lan");
    notifyListeners();
  }

  String authentication = "signin";
  switchAuthentcation(String value) {
    authentication = value;
    notifyListeners();
  }

  int screen = 3;
  switchBottomNavigatorBar(int val) {
    screen = val;
    notifyListeners();
  }
  double sliderValue = 30.0;
  int screenBoard = 1;
  switchboard() {
    screenBoard += 1;
    sliderValue += 30.0;
    notifyListeners();
  }
  



////driver 
  int ScreenDriver=3;
  changenavbardriver(int value){
    ScreenDriver=value;
    notifyListeners();
  }
  int area=0;
  changeAreaDriver(int value){
    area=value;
    notifyListeners();
  }
}
