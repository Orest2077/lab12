import 'package:flutter/material.dart';

class RgbProvider extends ChangeNotifier {
  int _red = 120;
  int _green = 60;
  int _blue = 200;

  int get red => _red;
  int get green => _green;
  int get blue => _blue;

  Color get currentColor => Color.fromRGBO(_red, _green, _blue, 1.0);

  void setRed(double value) {
    _red = value.toInt();
    notifyListeners();
  }

  void setGreen(double value) {
    _green = value.toInt();
    notifyListeners();
  }

  void setBlue(double value) {
    _blue = value.toInt();
    notifyListeners();
  }
}
