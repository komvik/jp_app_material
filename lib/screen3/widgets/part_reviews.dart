import 'dart:ui';
import 'package:flutter/material.dart';

class PartReviews extends StatelessWidget {
  const PartReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Reviews",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
                width: 14,
                height: 14,
                child: Image(image: AssetImage("assets/icons/star1.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 14,
                height: 14,
                child: Image(image: AssetImage("assets/icons/star1.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 14,
                height: 14,
                child: Image(image: AssetImage("assets/icons/star1.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 14,
                height: 14,
                child: Image(image: AssetImage("assets/icons/star1.png"))),
            SizedBox(width: 5),
            SizedBox(
                width: 14,
                height: 14,
                child: Image(image: AssetImage("assets/icons/star2.png"))),
            SizedBox(width: 20),
            Text(
              "4.0",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
