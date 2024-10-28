import 'package:e_commerce_app/utils/common/item_cards/grid_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  final List<Map<String, dynamic>> categoryData;

  const GridLayout({
    super.key,
    required this.categoryData,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 2,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        final eachItem = categoryData[index];
        Text(
          "Hello World",
          style: TextStyle(
            color: Colors.black,
          ),
        );
        // return GridItemCard(
        //   imagePath: eachItem['imagePath'],
        //   smallText: eachItem['smallText'],
        //   bigText: eachItem['bigText'],
        //   numOfStars: eachItem["numOfStars"],
        //   price: eachItem["price"].toString(),
        //   onTap: () {},
        // );
      },
    );
  }
}
