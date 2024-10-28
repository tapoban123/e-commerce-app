import 'package:flutter/material.dart';

class TopsCard extends StatelessWidget {
  final String cardTitle;

  const TopsCard({
    super.key,
    required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 100,
        height: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black,
        ),
        alignment: Alignment.center,
        child: Text(
          cardTitle,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
