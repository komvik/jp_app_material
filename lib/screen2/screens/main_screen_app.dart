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
          backgroundColor: const Color.fromARGB(26, 0, 0, 0),
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

                  ///
                  ///
//___________________________________________ List Viev Panels

                  Positioned(
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
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.4)),
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
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.4)),
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
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.4)),
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
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.4)),
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
                  ),

                  ///
                  ///
                  ///
                  ///
                  Positioned(
                      top: 270,
                      left: 40,
                      child: Transform.scale(
                          scale: 1.14,
                          child: Image.asset("assets/details/Top Card.png"))),
                  //______________________________________
                  ///
                  ///
                  ///

                  const Positioned(
                    top: 252,
                    left: 280,
                    child: Row(
                      children: [
                        SizedBox(height: 60),
                        SizedBox(
                          width: 65,
                        ),
                        SizedBox(
                            width: 14,
                            height: 14,
                            child: Image(
                                image: AssetImage("assets/grafiken/star.png"))),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "4,8",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                  ),

                  ///
                  ///
                  ///
                  Positioned(
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
                      )),

//______________________________________

                  const Positioned(
                    top: 570,
                    left: 25,
                    child: Text(
                      "We Recommend",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

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
                          child: RecommendCard(item: cardData[index]),
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
