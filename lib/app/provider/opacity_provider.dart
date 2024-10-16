import 'package:flutter/foundation.dart';

class OpacityProvider with ChangeNotifier{
  double _opacityValue = 1;
  double get opacity=> _opacityValue;

  void changeOpacity(val){
    _opacityValue = val;
    notifyListeners();
  }
}