import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/model/card_item.dart';

class DetailedInfoScreen extends StatefulWidget {
  CardItem item;

  DetailedInfoScreen({super.key, required this.item});

  @override
  State<DetailedInfoScreen> createState() => _DetailedInfoScreenState();
}

class _DetailedInfoScreenState extends State<DetailedInfoScreen> {
//
  Set<Accessory> selectedAccessories = <Accessory>{Accessory.Large};
//
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

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
              height: 950,
              color: Colors.transparent,
              child: Stack(
                textDirection: TextDirection.ltr,
                children: <Widget>[
//___________________________________________________ 1.Container Text top
                  const Positioned(
                      top: 85,
                      left: 20,
                      child: Text(
                        "Choose Your Favorite \n Snack ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      )),
//______________________________________________________2.Container all bckgrnd
                  Positioned(
                    top: 112,
                    left: 0,
                    child: Container(
                      width: 430,
                      height: 780,
                      color: const Color.fromARGB(255, 40, 40, 40),
                    ),
                  ),
//______________________________________________________3.Container  IMAGE
                  Transform.scale(
                      scale: 1.1,
                      child: Image.asset(widget.item.cardImagePath)),
//______________________________________________________4.Container info forder
                  Positioned(
                    top: 340,
                    left: 15,
                    child: SizedBox(
                      width: 400,
                      height: 400,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                            side: const BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(185, 167, 166, 166))),
                        color: const Color.fromARGB(
                            100, 39, 37, 37), //  ToDoShadowColor

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
                                    child: Image(
                                        image: AssetImage(
                                            "assets/icons/heart.png"))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "200",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
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
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing "
                                "nelitr, sed diam nonumy eirmod tempor invidunt"
                                "ut labore et dolore magna aliquyam erat, sed diam voluptua."
                                " At vero eos et accusam et justo duo dolores et ea rebum."
                                " Stet clita kasd gubergren,",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
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

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ingridients",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/ico1.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/ico2.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/ico3.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/ico4.png"))),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 100),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/star1.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/star1.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/star1.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/star1.png"))),
                                        SizedBox(width: 5),
                                        SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/icons/star2.png"))),
                                        SizedBox(width: 20),
                                        Text(
                                          "4.0",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
//_________________________________________6.Container Choise

                  Positioned(
                    top: 770,
                    left: 20,
                    child: Row(
                      children: [
                        SegmentedButton<Accessory>(
                          selected: selectedAccessories,
                          multiSelectionEnabled: false,
                          showSelectedIcon: false,
                          style: ButtonStyle(
                            backgroundColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              return states.contains(WidgetState.selected)
                                  ? const Color.fromARGB(133, 151, 150, 150)
                                  : const Color.fromARGB(255, 67, 67, 67);
                            }),
                          ),
                          onSelectionChanged: (Set<Accessory> newSelection) {
                            setState(() {
                              selectedAccessories = newSelection;
                            });
                          },
                          segments: const <ButtonSegment<Accessory>>[
                            ButtonSegment<Accessory>(
                              value: Accessory.Small,
                              label: Text(
                                "Small",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            ButtonSegment<Accessory>(
                              value: Accessory.Medium,
                              label: Text(
                                "Medium",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            ButtonSegment<Accessory>(
                              value: Accessory.Large,
                              label: Text(
                                "Large",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
//  minus
                        const SizedBox(width: 50),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.25), // border color
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              size: 22,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _decrementCounter();
                            },
                          ),
                        ),

                        const SizedBox(width: 15),
                        Text(
                          "$_counter",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(width: 15),
//  plus

                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.25), // border color
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              size: 22,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _incrementCounter();
                            },
                          ),
                        ),

//
                      ],
                    ),
                  ),

//______________________________________________________7.Container BTN (POP)
                  Positioned(
                    top: 140,
                    left: 385,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255)
                            .withOpacity(0.25), // border color
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.clear,
                          size: 22,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
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

enum Accessory { Small, Medium, Large }
