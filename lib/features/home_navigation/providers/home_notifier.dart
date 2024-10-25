import 'package:e_commerce_app/features/home/home_page.dart';
import 'package:e_commerce_app/features/home/sales/sales_home.dart';
import 'package:e_commerce_app/features/home/sales/street_clothes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeNotifier extends ChangeNotifier {
  int _homePageNumber = 1;

  int get homePageNumber => _homePageNumber;

  void changeHomePageNumber(int newPage) {
    _homePageNumber = newPage;

    notifyListeners();
  }
}

Widget homePages(BuildContext context) {
  int homePageNumber = Provider.of<HomeNotifier>(context).homePageNumber;

  if (homePageNumber == 1) {
    return const HomePage();
  } else if (homePageNumber == 2) {
    return const SalesHome();
  } else {
    return const StreetClothesPage();
  }
}
