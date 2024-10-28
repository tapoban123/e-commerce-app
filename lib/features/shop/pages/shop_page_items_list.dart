import 'package:e_commerce_app/features/shop/data/women_category_data.dart';
import 'package:e_commerce_app/features/shop/provider/category_item_data_notifier.dart';
import 'package:e_commerce_app/features/shop/provider/shop_page_notifier.dart';
import 'package:e_commerce_app/features/shop/widgets/shop_page_appbar.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPageItemsList extends StatelessWidget {
  const ShopPageItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShopPageAppbar(
          appBarText: "Categories",
          onTap: () => Provider.of<ShopPageNotifier>(
            context,
            listen: false,
          ).changeShopPage(0),
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.redColor,
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Text(
                  "VIEW ALL ITEMS",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "Choose category",
                style: TextStyle(
                  fontSize: 14,
                  color: CustomColors.greyTextColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            children: List.generate(
              itemsList[0]["items"].length,
              (index) {
                final eachItemTitle =
                    itemsList[0]["items"].keys.toList()[index];
                final eachItemData = itemsList[0]["items"][eachItemTitle];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: Text(
                        eachItemTitle,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 40),
                      onTap: () {
                        Provider.of<ShopPageNotifier>(
                          context,
                          listen: false,
                        ).changeShopPage(2);
                        Provider.of<CategoryItemDataNotifier>(
                          context,
                          listen: false,
                        ).updateItemData(eachItemData);
                      },
                    ),
                    Divider(
                      color: CustomColors.greyTextColor.withOpacity(0.25),
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
