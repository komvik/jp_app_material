import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/repositories/card_data.dart';
import 'package:jp_app_material/screen2/widgets/recommend_card.dart';
import 'package:jp_app_material/screen3/detailed_info_screen.dart';

class MainScreenApp extends StatefulWidget {
  const MainScreenApp({super.key});

  @override
  State<MainScreenApp> createState() => _MainScreenAppState();
}

class _MainScreenAppState extends State<MainScreenApp> {
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
                  Positioned(
                      top: 200,
                      left: 70,
                      child: Transform.scale(
                          scale: 0.54,
                          child: Image.asset("assets/grafiken/Burger_3D.png"))),
                  //_________ Container ->Image-Text->Price->Icon
                  Positioned(
                    top: 600,
                    left: 20,
                    width: 400,
                    height: 290,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: cardData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                clipBehavior: Clip.none,
                                builder: (context) {
                                  return DetailedInfoScreen(
                                      item: cardData[index]);
                                });
                          },
                          child: Container(
                              child: RecommendCard(item: cardData[index])),
                        );
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
