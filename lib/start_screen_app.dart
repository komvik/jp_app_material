import 'package:flutter/material.dart';
import 'package:jp_app_material/change_to_main_screen_app.dart';
import 'package:jp_app_material/main_screen_app.dart';

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
          backgroundColor: Colors.transparent,
          body: Container(
              width: 430,
              height: 900,
              color: Colors.transparent,
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
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                            side: const BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(186, 181, 176, 176))),
                        color: const Color.fromARGB(
                            191, 39, 37, 37), //  ToDoShadowColor
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
                              "and get instantly happy",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(height: 30),
                            //
                            //__________________________________________________ Button
                            // ElevatedButton(
                            //   style: ButtonStyle(
                            //     backgroundColor: WidgetStateProperty.all(
                            //         const Color.fromARGB(255, 216, 173, 215)),
                            //     shape: WidgetStateProperty.all<
                            //         RoundedRectangleBorder>(
                            //       RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(8.0),
                            //         side: const BorderSide(
                            //           color: Color.fromARGB(245, 224, 86, 0),
                            //           width: 0.3,
                            //         ),
                            //       ),
                            //     ),
                            //     fixedSize: WidgetStateProperty.all(
                            //         const Size(220, 50)),
                            //   ),
                            //   child: const Text(
                            //     'Order Now',
                            //     style: TextStyle(
                            //       fontSize: 18,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            //   onPressed: () {},
                            // ),

                            ChangeToMainScreenApp(),
//
                          ],
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
