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
      child: Container(
        width: 220,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(218, 213, 90, 255),
              Color.fromARGB(255, 227, 203, 124),
            ],
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(65, 12, 10, 10),
          child: Text(
            "Order Now",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
