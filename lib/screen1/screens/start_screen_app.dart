import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_material/screen1/widgets/change_to_main_screen_app.dart';
//import 'package:jp_app_material/screen2/screens/main_screen_app.dart';

class StartScreenApp extends StatelessWidget {
  const StartScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/hintergrunde/bg_startscreen.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(17, 0, 0, 0),
          body: Container(
              width: 430,
              height: 900,
              color: const Color.fromARGB(21, 0, 0, 0),
              padding:
                  const EdgeInsets.only(top: 130, bottom: 0, left: 0, right: 0),
              //
              child: Stack(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Positioned(
                      top: 20,
                      left: 10,
                      child: Transform.scale(
                          scale: 1.2,
                          child: Image.asset(
                              "assets/grafiken/chick cupcakes_3D.png"))),
                  Positioned(
                      top: 400,
                      left: 23,
                      child: Transform.scale(
                          scale: 1.14,
                          child: Image.asset("assets/details/T2.png"))),
                  //_________________________________________
                  Positioned(
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
                                    color: const Color.fromARGB(
                                        186, 181, 176, 176))),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
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
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
