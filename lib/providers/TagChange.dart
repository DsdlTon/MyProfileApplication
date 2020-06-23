import 'package:flutter/material.dart';

class TagChangeProvider with ChangeNotifier {
  String _tag = "Login UI";

  String get tag => _tag;

  void swapTag(String value) {
    _tag = value;
    notifyListeners();
  }
}
