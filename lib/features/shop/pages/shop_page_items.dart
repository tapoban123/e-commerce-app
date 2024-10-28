import 'package:e_commerce_app/features/shop/layout/grid_layout.dart';
import 'package:e_commerce_app/features/shop/layout/list_layout.dart';
import 'package:e_commerce_app/features/shop/provider/category_item_data_notifier.dart';
import 'package:e_commerce_app/features/shop/provider/item_layout_notifier.dart';
import 'package:e_commerce_app/features/shop/provider/shop_page_notifier.dart';
import 'package:e_commerce_app/features/shop/widgets/items_view_options.dart';
import 'package:e_commerce_app/features/shop/widgets/shop_page_appbar.dart';
import 'package:e_commerce_app/features/shop/widgets/tops_card.dart';
import 'package:e_commerce_app/utils/common/item_cards/list_item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPageItems extends StatelessWidget {
  const ShopPageItems({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryData =
        Provider.of<CategoryItemDataNotifier>(context).itemData;

    return Column(
      children: [
        ShopPageAppbar(
          appBarText: "",
          onTap: () => Provider.of<ShopPageNotifier>(
            context,
            listen: false,
          ).changeShopPage(1),
        ),
        Container(
          width: double.infinity,
          height: 130,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Women's tops",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    TopsCard(
                      cardTitle: "T-shirts",
                    ),
                    TopsCard(
                      cardTitle: "Crop tops",
                    ),
                    TopsCard(
                      cardTitle: "Sleeveless",
                    ),
                    TopsCard(
                      cardTitle: "Shirts",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const ItemsViewOptions(),
        Container(
          width: double.infinity,
          height: 14,
          color: Colors.white,
        ),
        const SizedBox(
          height: 18,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Consumer<ItemLayoutNotifier>(
            builder: (context, itemLayoutProvider, child) {
              if (itemLayoutProvider.gridView) {
                return GridLayout(categoryData: categoryData);
              } else {
                return ListLayout(categoryData: categoryData);
              }
            },
          ),
        ))
      ],
    );
  }
}
