import 'dart:ui';
import 'package:flutter/material.dart';

class ButtonBackToScreen2 extends StatelessWidget {
  const ButtonBackToScreen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 385,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255)
              .withOpacity(0.25), // border color
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: const Icon(
            Icons.clear,
            size: 22,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
