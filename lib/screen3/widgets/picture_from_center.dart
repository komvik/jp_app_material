import 'package:flutter/material.dart';
import 'package:jp_app_material/screen3/screens/detailed_info_screen.dart';

class PictureFromCenter extends StatelessWidget {
  const PictureFromCenter({
    super.key,
    required this.widget,
  });

  final DetailedInfoScreen widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -175,
        left: -44,
        child: Transform.scale(
            scale: 0.9, child: Image.asset(widget.item.cardImagePath)));
  }
}
