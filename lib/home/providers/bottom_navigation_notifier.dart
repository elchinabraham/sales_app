import 'package:flutter/material.dart';

class BottomNavigationNotifier with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void selectIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
}
