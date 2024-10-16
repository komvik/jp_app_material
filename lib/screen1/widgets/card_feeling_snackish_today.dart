import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_material/screen1/widgets/button_order_now.dart';

class CardFeelingSnackishToday extends StatelessWidget {
  const CardFeelingSnackishToday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 507,
      left: 15,
      child: SizedBox(
        width: 400,
        height: 250,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 8,
              sigmaY: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(67, 39, 37, 37),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                      width: 0.15,
                      color: const Color.fromARGB(186, 181, 176, 176))),
              child: const Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Feeling Snackish Today?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Explore Angi's most popular snack celection \n"
                    "and get instantly happy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  SizedBox(height: 30),
                  //Button "Order Now"
                  ChangeToMainScreenApp(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
