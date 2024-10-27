import 'package:e_commerce_app/features/home_navigation/providers/navigation_notifier.dart';
import 'package:e_commerce_app/features/shop/provider/sales_tab_provider.dart';
import 'package:e_commerce_app/features/shop/tab_screens/kids.dart';
import 'package:e_commerce_app/features/shop/tab_screens/men.dart';
import 'package:e_commerce_app/features/shop/tab_screens/women.dart';
import 'package:e_commerce_app/features/shop/widgets/sales_tab.dart';
import 'package:e_commerce_app/utils/common/back_arrow.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 12),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackArrow(
                    onTap: () {
                      Provider.of<NavigationNotifier>(
                        context,
                        listen: false,
                      ).updatePageNumber(0);
                    },
                    height: 30,
                  ),
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Image.asset(ImagePaths.searchIcon),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            width: double.infinity,
            height: 45,
            color: Colors.white,
            alignment: Alignment.center,
            child: Consumer<SalesTabProvider>(
              builder: (context, salesTabProvider, child) => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SalesTab(
                    onTap: () {
                      salesTabProvider.changeTabNumber(0);
                    },
                    tabNumber: 0,
                    tabText: "Women",
                  ),
                  SalesTab(
                    onTap: () {
                      salesTabProvider.changeTabNumber(1);
                    },
                    tabNumber: 1,
                    tabText: "Men",
                  ),
                  SalesTab(
                    onTap: () {
                      salesTabProvider.changeTabNumber(2);
                    },
                    tabNumber: 2,
                    tabText: "Kids",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: Provider.of<SalesTabProvider>(context).tabNumber,
              children: const [
                WomenSection(),
                MenSection(),
                KidsSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
