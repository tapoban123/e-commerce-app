import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsViewOptions extends StatelessWidget {
  const ItemsViewOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
          Row(
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
          Row(
            children: [
              Icon(CupertinoIcons.square_grid_3x2_fill),
            ],
          ),
        ],
      ),
    );
  }
}