import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_material/screen3/screens/detailed_info_screen.dart';

class ButtonAddToOrder extends StatelessWidget {
  const ButtonAddToOrder({
    super.key,
    required this.widget,
  });

  final DetailedInfoScreen widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 720,
      left: 25,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.05, sigmaY: 1.05),
        child: Container(
          width: 380,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 193, 102, 235),
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(218, 235, 113, 202),
                Color.fromARGB(255, 245, 153, 168),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(95, 12, 10, 10),
            child: Text(
              "Add to order for  ${widget.item.cardPrise}",
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
