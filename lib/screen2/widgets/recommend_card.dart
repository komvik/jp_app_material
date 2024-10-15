import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/model/card_item.dart';

class RecommendCard extends StatelessWidget {
  CardItem item;

  RecommendCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 600,
      left: 15,
      child: SizedBox(
        width: 220,
        height: 300,
        //___________________________
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
              side: const BorderSide(
                  width: 0.5, color: Color.fromARGB(115, 120, 130, 171))),
          color: const Color.fromARGB(109, 56, 154, 240), //  ToDoShadowColor
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 180,
                  height: 180,
                  child: Image.asset(item.cardImagePath)),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.cardTitle,
                            //  textAlign: TextAlign.start,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                        Text(
                          // textAlign: TextAlign.start,

                          item.cardDescription,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
                        ),
                        Row(
                          children: [
                            Text(
                              item.cardPrise,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 10),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            IconButton(
                              icon: const Icon(Icons.favorite),
                              onPressed: () => (0),
                            ),
                            const Text(
                              "200",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
