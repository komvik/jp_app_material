import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_material/screen3/screens/detailed_info_screen.dart';
import 'package:jp_app_material/screen3/widgets/container_ingridients_reviews.dart';

class CardWithContent extends StatelessWidget {
  const CardWithContent({
    super.key,
    required this.widget,
  });

  final DetailedInfoScreen widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 205,
      left: 15,
      child: SizedBox(
        width: 400,
        height: 370,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
              side: const BorderSide(
                  width: 0.5, color: Color.fromARGB(185, 167, 166, 166))),
          color: const Color.fromARGB(100, 39, 37, 37), //  ToDoShadowColor
          child: Column(
            children: [
              const SizedBox(height: 20),
              //children 0
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 14,
                      height: 14,
                      child:
                          Image(image: AssetImage("assets/icons/heart.png"))),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "200",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                ],
              ),

              //children 1
              Text(
                widget.item.cardTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              //children 2
              const SizedBox(height: 1),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing "
                  "nelitr, sed diam nonumy eirmod tempor invidunt"
                  "ut labore et dolore magna aliquyam erat, sed diam voluptua."
                  " At vero eos et accusam et justo duo dolores et ea rebum."
                  " Stet clita kasd gubergren,",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(height: 10),
              //children3
              Text(
                widget.item.cardPrise,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(height: 10),
              const Divider(
                indent: 30,
                endIndent: 30,
                thickness: 0.5,
              ),
              //children4

              const SizedBox(height: 20),

              //______________________________________________________5.Container Ingridients

              const ContainerIngridientsReviews(),
            ],
          ),
        ),
      ),
    );
  }
}
