import 'package:e_commerce_app/features/shop/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalesTabProvider extends ChangeNotifier {
  int _tabNumber = 0;

  int get tabNumber => _tabNumber;

  void changeTabNumber(int newTab) {
    _tabNumber = newTab;

    notifyListeners();
  }
}

Widget tabContent(BuildContext context) {
  int currentTabNumber = Provider.of<SalesTabProvider>(context)._tabNumber;

  if (currentTabNumber == 0) {
    return const ShopPage();
  } else if (currentTabNumber == 1) {
    return const Column();
  } else {
    return const Column();
  }
}
