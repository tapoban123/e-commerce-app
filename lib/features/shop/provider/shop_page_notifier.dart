import 'package:e_commerce_app/features/shop/pages/shop_page_home.dart';
import 'package:e_commerce_app/features/shop/pages/shop_page_items.dart';
import 'package:e_commerce_app/features/shop/pages/shop_page_items_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPageNotifier extends ChangeNotifier {
  int _currentShopPage = 0;

  int get currentShopPage => _currentShopPage;

  void changeShopPage(int newPage) {
    _currentShopPage = newPage;
    notifyListeners();
  }
}

Widget currentShopPageContent(BuildContext context) {
  int shopPage = Provider.of<ShopPageNotifier>(context).currentShopPage;

  if (shopPage == 0) {
    return const ShopPageHome();
  } else if (shopPage == 1) {
    return const ShopPageItemsList();
  } else {
    return const ShopPageItems();
  }
}
