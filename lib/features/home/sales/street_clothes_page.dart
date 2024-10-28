import 'package:e_commerce_app/utils/common/item_cards/grid_item_card.dart';
import 'package:e_commerce_app/features/home_navigation/providers/home_notifier.dart';
import 'package:e_commerce_app/utils/common/back_arrow.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StreetClothesPage extends StatelessWidget {
  const StreetClothesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    ImagePaths.salesSmallBannerImg,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.2),
                ),
                const Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    "Street Clothes",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: BackArrow(
                    onTap: () => Provider.of<HomeNotifier>(
                      context,
                      listen: false,
                    ).changeHomePageNumber(2),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sale",
                            style: TextStyle(
                              fontSize: 34,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Super summer sale",
                          ),
                        ],
                      ),
                      Text(
                        "View all",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GridItemCard(
                        imagePath: ImagePaths.eveningDressImg,
                        smallText: "Dorothy Perkins",
                        bigText: "Evening Dress",
                        onTap: () {},
                        onSale: true,
                        oldPrice: "\$ 15",
                        newPrice: "\$ 12",
                        numOfStars: 5,
                        discount: "-20%",
                        ratings: 10,
                      ),
                      GridItemCard(
                        imagePath: ImagePaths.sportDressImg,
                        smallText: "Sitlly",
                        bigText: "Sport Dress",
                        onTap: () {},
                        onSale: true,
                        oldPrice: "\$ 22",
                        newPrice: "\$ 19",
                        numOfStars: 2,
                        ratings: 5,
                        discount: "-15%",
                      ),
                      GridItemCard(
                        imagePath: ImagePaths.sportDress2Img,
                        smallText: "Dorothy Perkins",
                        bigText: "Evening Dress",
                        onTap: () {},
                        onSale: true,
                        oldPrice: "\$ 14",
                        newPrice: "\$ 12",
                        numOfStars: 5,
                        discount: "-20%",
                        ratings: 24,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Text("You've never seen it before!"),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 290,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GridItemCard(
                        imagePath: ImagePaths.blouseImg,
                        smallText: "OVS",
                        bigText: "Blouse",
                        price: "\$ 30",
                        onTap: () {},
                        numOfStars: 4,
                        ratings: 11,
                      ),
                      GridItemCard(
                        imagePath: ImagePaths.tShirtImg,
                        smallText: "Mango Boy",
                        bigText: "T-Shirt Sailing",
                        price: "\$ 10",
                        onTap: () {},
                        numOfStars: 5,
                        ratings: 26,
                      ),
                      GridItemCard(
                        imagePath: ImagePaths.sportDressImg,
                        smallText: "Sitly",
                        bigText: "Sport Dress",
                        price: "\$ 19",
                        onTap: () {},
                        numOfStars: 2,
                        ratings: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
