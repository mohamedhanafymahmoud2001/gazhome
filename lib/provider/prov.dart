import 'package:flutter/material.dart';
import 'package:gazhome/provider/api.dart';
import 'package:hive/hive.dart';

class Control extends ChangeNotifier {
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
}
