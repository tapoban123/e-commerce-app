import 'package:e_commerce_app/features/bag/bag_page.dart';
import 'package:e_commerce_app/features/favorites/favorites_page.dart';
import 'package:e_commerce_app/features/home/home_page.dart';
import 'package:e_commerce_app/features/home_navigation/providers/navigation_notifier.dart';
import 'package:e_commerce_app/features/home_navigation/widgets/navigation_icon.dart';
import 'package:e_commerce_app/features/profile/profile_page.dart';
import 'package:e_commerce_app/features/shop/shop_page.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class NavigationController extends StatefulWidget {
  const NavigationController({super.key});

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool isColored = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    super.initState();
  }

  List<Widget> pages = const [
    HomePage(),
    ShopPage(),
    BagPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Colors.white),
    );

    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Consumer<NavigationNotifier>(
          builder: (context, navigationProvider, child) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationIcon(
                controller: _controller,
                pageNumber: 0,
                imagePath: ImagePaths.homeSvg,
                coloredImagePath: ImagePaths.homeColoredSvg,
                iconText: "Home",
                onTap: () {
                  navigationProvider.updatePageNumber(0);
                },
              ),
              NavigationIcon(
                controller: _controller,
                pageNumber: 1,
                imagePath: ImagePaths.shoppingCartSvg,
                coloredImagePath: ImagePaths.shoppingCartColoredSvg,
                iconText: "Shop",
                onTap: () {
                  navigationProvider.updatePageNumber(1);
                },
              ),
              NavigationIcon(
                controller: _controller,
                pageNumber: 2,
                imagePath: ImagePaths.shoppingBagSvg,
                coloredImagePath: ImagePaths.shoppingBagColoredSvg,
                iconText: "Bag",
                onTap: () {
                  navigationProvider.updatePageNumber(2);
                },
              ),
              NavigationIcon(
                controller: _controller,
                pageNumber: 3,
                imagePath: ImagePaths.heartSvg,
                coloredImagePath: ImagePaths.heartColoredSvg,
                iconText: "Favorites",
                onTap: () {
                  navigationProvider.updatePageNumber(3);
                },
              ),
              NavigationIcon(
                controller: _controller,
                pageNumber: 4,
                imagePath: ImagePaths.profileSvg,
                coloredImagePath: ImagePaths.profileColoredSvg,
                iconText: "Profile",
                onTap: () {
                  navigationProvider.updatePageNumber(4);
                },
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: Provider.of<NavigationNotifier>(context).pageNumber,
        children: pages,
      ),
    );
  }
}
