import 'package:e_commerce_app/features/shop/provider/item_layout_notifier.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
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
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => DraggableScrollableSheet(
                  initialChildSize: 0.5,
                  expand: true,
                  snap: false,
                  maxChildSize: 0.5,
                  // minChildSize: 0.2,
                  builder: (context, scrollController) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColors.scaffoldBackgroundColor,
                    ),
                    child: Column(
                      children: [
                        Text("Sort by"),
                        ListTile(
                          title: Text("Popular"),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            child: const Row(
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
