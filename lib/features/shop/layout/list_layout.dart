import 'package:e_commerce_app/utils/common/item_cards/list_item_card.dart';
import 'package:flutter/cupertino.dart';

class ListLayout extends StatelessWidget {
  final List<Map<String, dynamic>> categoryData;

  const ListLayout({
    super.key,
    required this.categoryData,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryData.length,
      itemBuilder: (context, index) {
        final eachItem = categoryData[index];
        return ListItemCard(
          imagePath: eachItem['imagePath'],
          itemSmallText: eachItem['smallText'],
          itemTitle: eachItem['bigText'],
          numberOfStars: eachItem["numOfStars"],
          price: eachItem["price"],
          isFavorite: eachItem["favorite"],
        );
      },
    );
  }
}
