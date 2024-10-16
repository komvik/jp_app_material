import 'package:flutter/material.dart';

class SegmentStarCardAngrisYummyBurger extends StatelessWidget {
  const SegmentStarCardAngrisYummyBurger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 252,
      left: 280,
      child: Row(
        children: [
          SizedBox(height: 60),
          SizedBox(
            width: 65,
          ),
          SizedBox(
              width: 14,
              height: 14,
              child: Image(image: AssetImage("assets/grafiken/star.png"))),
          SizedBox(
            width: 8,
          ),
          Text(
            "4,8",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
