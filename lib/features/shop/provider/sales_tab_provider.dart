import 'package:flutter/material.dart';

class SalesTabProvider extends ChangeNotifier {
  int _tabNumber = 0;

  int get tabNumber => _tabNumber;

  void changeTabNumber(int newTab) {
    _tabNumber = newTab;

    notifyListeners();
  }
}
