import 'package:e_commerce_app/features/home_navigation/providers/navigation_notifier.dart';
import 'package:e_commerce_app/features/shop/provider/sales_tab_provider.dart';
import 'package:e_commerce_app/features/shop/tab_screens/kids.dart';
import 'package:e_commerce_app/features/shop/tab_screens/men.dart';
import 'package:e_commerce_app/features/shop/tab_screens/women.dart';
import 'package:e_commerce_app/features/shop/widgets/sales_tab.dart';
import 'package:e_commerce_app/features/shop/widgets/shop_page_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPageHome extends StatelessWidget {
  const ShopPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShopPageAppbar(
          appBarText: "Categories",
          onTap: () => Provider.of<NavigationNotifier>(
            context,
            listen: false,
          ).updatePageNumber(0),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          width: double.infinity,
          height: 45,
          color: Colors.white,
          alignment: Alignment.center,
          child: Consumer<SalesTabNotifier>(
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
            index: Provider.of<SalesTabNotifier>(context).tabNumber,
            children: const [
              WomenSection(),
              MenSection(),
              KidsSection(),
            ],
          ),
        ),
      ],
    );
  }
}
