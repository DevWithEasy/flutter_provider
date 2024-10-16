import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> favouriteList = [];

  void addItem(index){
    favouriteList.add(index);
    notifyListeners();
  }
  void removeItem(index){
    favouriteList.remove(index);
    notifyListeners();
  }
}