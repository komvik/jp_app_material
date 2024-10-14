import 'package:flutter/material.dart';

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
              padding:
                  const EdgeInsets.only(top: 130, bottom: 0, left: 0, right: 0),
              //
              child: Stack(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Positioned(
                      top: 130,
                      left: 40,
                      child: Transform.scale(
                          scale: 1.1,
                          child: Image.asset("assets/details/Top Card.png"))),

                  //______________________________ Container
                  Positioned(
                    top: 480,
                    left: 15,
                    child: SizedBox(
                      width: 220,
                      height: 300,
                      //___________________________
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                            side: const BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(115, 120, 130, 171))),
                        color: const Color.fromARGB(
                            109, 56, 154, 240), //  ToDoShadowColor
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 180,
                                height: 180,
                                child: Image.asset(
                                    "assets/grafiken/cat cupcakes_3D.png")),

                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Mogli's Cup",
                                          //  textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14)),
                                      const Text(
                                        // textAlign: TextAlign.start,

                                        "Strawbery ice creme",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "A 8,99",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          IconButton(
                                            icon: const Icon(Icons.favorite),
                                            onPressed: () => (0),
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
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
