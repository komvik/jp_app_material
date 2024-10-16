import 'package:flutter/material.dart';

class ContainerListCategories extends StatelessWidget {
  const ContainerListCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 20,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.4)),
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  ///________________________1
                  SizedBox(width: 15),
                  Icon(
                    Icons.fastfood_outlined,
                    color: Colors.white54,
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "All categories",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.white54,
                    size: 22,
                  ),
                ],
              ),
            ),

            ///________________________2
            const SizedBox(width: 8),
            Container(
              height: 40,
              width: 95,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.4)),
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "Salty",
                    style: TextStyle(
                        color: Color.fromARGB(255, 42, 41, 41),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            ///________________________3
            const SizedBox(width: 8),
            Container(
              height: 40,
              width: 95,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.4)),
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  SizedBox(width: 27),
                  Text(
                    "Sweet",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            ///________________________4
            const SizedBox(width: 8),
            Container(
              height: 40,
              width: 95,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.4)),
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  SizedBox(width: 27),
                  Text(
                    "Sweet",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
