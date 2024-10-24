import 'package:flutter/material.dart';

class NavigationNotifier extends ChangeNotifier {
  int _pageNumber = 0;

  int get pageNumber => _pageNumber;

  void updatePageNumber(int newPageNumber) {
    _pageNumber = newPageNumber;

    notifyListeners();
  }
}
