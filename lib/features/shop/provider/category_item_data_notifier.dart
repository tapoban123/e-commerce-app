import 'package:flutter/material.dart';

class CategoryItemDataNotifier extends ChangeNotifier {
  List<Map<String, dynamic>> _data = [];

  List<Map<String, dynamic>> get itemData => _data;

  void updateItemData(List<Map<String, dynamic>> newData) {
    _data = newData;
    notifyListeners();
  }
}
