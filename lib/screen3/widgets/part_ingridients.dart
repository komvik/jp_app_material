import 'dart:ui';
import 'package:flutter/material.dart';

class PartIngridients extends StatelessWidget {
  const PartIngridients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ingridients",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
                width: 18,
                height: 18,
                child: Image(image: AssetImage("assets/icons/ico1.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 18,
                height: 18,
                child: Image(image: AssetImage("assets/icons/ico2.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 18,
                height: 18,
                child: Image(image: AssetImage("assets/icons/ico3.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 18,
                height: 18,
                child: Image(image: AssetImage("assets/icons/ico4.png"))),
          ],
        ),
      ],
    );
  }
}
