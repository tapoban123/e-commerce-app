import 'package:e_commerce_app/features/shop/provider/sales_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalesTab extends StatelessWidget {
  final String tabText;
  final int tabNumber;
  final VoidCallback onTap;

  const SalesTab({
    super.key,
    required this.onTap,
    required this.tabNumber,
    required this.tabText,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                tabText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Provider.of<SalesTabNotifier>(context).tabNumber == tabNumber
                  ? Container(
                      width: double.infinity,
                      height: 4,
                      color: Colors.red,
                    )
                  : const SizedBox(
                      height: 4,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
