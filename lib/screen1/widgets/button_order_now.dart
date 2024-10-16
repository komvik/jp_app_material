import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/screens/main_screen_app.dart';

class ChangeToMainScreenApp extends StatelessWidget {
  const ChangeToMainScreenApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MainScreenApp()));
      },
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.3,
          sigmaY: 1.3,
        ),
        child: Container(
          width: 220,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 193, 102, 235),
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
            border: Border.all(
              width: 1.0,
              color: const Color.fromARGB(255, 213, 151, 234),
            ),
            borderRadius: BorderRadius.circular(11),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 233, 112, 199),
                Color.fromARGB(255, 246, 154, 175),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(65, 12, 10, 10),
            child: Text(
              "Order Now",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9)),
            ),
          ),
        ),
      ),
    );
  }
}
