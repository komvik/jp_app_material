import 'package:flutter/material.dart';

class CardAngrisYummyBurger extends StatelessWidget {
  const CardAngrisYummyBurger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 280,
        left: 30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Angri's Yummy Burger",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Delich vegan burger \n"
              "that tastes like heaven",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "A 13.99",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 60),
            Container(
              width: 110,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 193, 102, 235),
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 102, 235),
                  width: 1,
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(218, 192, 142, 228),
                    Color.fromARGB(255, 154, 141, 246),
                  ],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
                child: Text(
                  "Add to order",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
              ),
            ),
          ],
        ));
  }
}
