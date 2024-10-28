import 'package:e_commerce_app/features/shop/provider/shop_page_notifier.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: currentShopPageContent(context),
          ),
        ],
      ),
    );
  }
}
