import 'package:e_commerce_app/features/home/widgets/item_card.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 600,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Image.asset(
                      "assets/images/home_bg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    bottom: 140,
                    left: 20,
                    child: Text(
                      "Fashion",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 90,
                    left: 20,
                    child: Text(
                      "Sale",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.redColor,
                        fixedSize: const Size(150, 50),
                      ),
                      child: const Text(
                        "Check",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0)
                  .copyWith(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
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
                  const Text("You've never seen it before!"),
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    height: 290,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ItemCard(
                          imagePath: ImagePaths.blouseImg,
                          smallText: "OVS",
                          bigText: "Blouse",
                          price: "\$ 30",
                          onTap: () {},
                        ),
                        ItemCard(
                          imagePath: ImagePaths.tShirtImg,
                          smallText: "Mango Boy",
                          bigText: "T-Shirt Sailing",
                          price: "\$ 10",
                          onTap: () {},
                        ),
                        ItemCard(
                          imagePath: ImagePaths.sportDressImg,
                          smallText: "Sitly",
                          bigText: "Sport Dress",
                          price: "\$ 19",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
