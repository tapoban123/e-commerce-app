import "package:e_commerce_app/features/home_navigation/navigation_controller.dart";
import "package:e_commerce_app/features/home_navigation/providers/home_notifier.dart";
import "package:e_commerce_app/features/home_navigation/providers/navigation_notifier.dart";
import "package:e_commerce_app/features/shop/provider/category_item_data_notifier.dart";
import "package:e_commerce_app/features/shop/provider/item_layout_notifier.dart";
import "package:e_commerce_app/features/shop/provider/sales_tab_provider.dart";
import "package:e_commerce_app/features/shop/provider/shop_page_notifier.dart";
import "package:e_commerce_app/theme/custom_colors.dart";
import "package:e_commerce_app/theme/custom_fonts.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: CustomColors.scaffoldBackgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavigationNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => SalesTabNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => ShopPageNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryItemDataNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => ItemLayoutNotifier(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        title: "E-Commerce App",
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: CustomColors.scaffoldBackgroundColor,
            surfaceTintColor: CustomColors.scaffoldBackgroundColor,
            elevation: 0.0,
          ),
          fontFamily: CustomFonts.metropolisFont,
          scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColor,
        ),
        home: const NavigationController(),
      ),
    );
  }
}
