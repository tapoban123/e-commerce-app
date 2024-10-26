import 'package:e_commerce_app/features/home_navigation/providers/navigation_notifier.dart';
import 'package:e_commerce_app/features/shop/provider/sales_tab_provider.dart';
import 'package:e_commerce_app/features/shop/widgets/sales_card.dart';
import 'package:e_commerce_app/features/shop/widgets/sales_tab.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
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
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: CustomColors.redColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SUMMER SALES",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Upto 50% off",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: ListView(
                children: [
                  SalesCard(
                    imagePath: ImagePaths.salesNewImg,
                    onTap: () {},
                    text: "New",
                  ),
                  SalesCard(
                    imagePath: ImagePaths.salesClothesImg,
                    text: "Clothes",
                    onTap: () {},
                  ),
                  SalesCard(
                    imagePath: ImagePaths.salesShoesImg,
                    text: "Shoes",
                    onTap: () {},
                  ),
                  SalesCard(
                    imagePath: ImagePaths.salesAccessoriesImg,
                    text: "Accessories",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
