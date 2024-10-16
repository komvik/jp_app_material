import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_material/screen1/widgets/card_feeling_snackish_today.dart';

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
                  const CardFeelingSnackishToday(),
                ],
              )),
        ),
      ),
    );
  }
}
