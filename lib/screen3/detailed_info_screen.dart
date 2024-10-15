import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/model/card_item.dart';

class DetailedInfoScreen extends StatelessWidget {
  CardItem item;
  DetailedInfoScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/hintergrunde/bg_mainscreen.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              width: 430,
              height: 900,
              color: Colors.transparent,
              child: Stack(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  //______________________________________
                  const Positioned(
                      top: 80,
                      left: 10,
                      child: Text(
                        "Choose Your Favorite \n Snack ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      )),
                  //______________________________________

                  Positioned(
                      top: 270,
                      left: 40,
                      child: Transform.scale(
                          scale: 1.14,
                          child: Image.asset("assets/details/Top Card.png"))),
                  //______________________________________

                  const Positioned(
                      top: 280,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Angri's Yummy Burger",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Delich vegan burger \n"
                            "that tastes like heaven",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )),
                  //______________________________________
                  Transform.scale(
                      scale: 0.54, child: Image.asset(item.cardImagePath)),
                  //_________ Container ->Image-Text->Price->Icon
                ],
              )),
        ),
      ),
    );
  }
}
