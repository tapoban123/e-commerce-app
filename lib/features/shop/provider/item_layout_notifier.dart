import 'package:flutter/cupertino.dart';

class ItemLayoutNotifier extends ChangeNotifier {
  bool _gridView = false;

  bool get gridView => _gridView;

  void changeLayout() {
    _gridView = !_gridView;
    notifyListeners();
  }
}
