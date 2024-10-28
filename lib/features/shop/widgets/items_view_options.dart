import 'package:e_commerce_app/features/shop/provider/item_layout_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsViewOptions extends StatelessWidget {
  const ItemsViewOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.filter_list_rounded),
              SizedBox(
                width: 10,
              ),
              Text(
                "Filter",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                CupertinoIcons.arrow_up_arrow_down,
                size: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Price: Lowest to highest",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          Consumer<ItemLayoutNotifier>(
            builder: (context, itemLayoutProvider, child) => GestureDetector(
              onTap: () {
                itemLayoutProvider.changeLayout();
              },
              child: itemLayoutProvider.gridView
                  ? const Icon(CupertinoIcons.square_grid_3x2_fill)
                  : const Icon(CupertinoIcons.list_bullet),
            ),
          ),
        ],
      ),
    );
  }
}
