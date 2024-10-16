import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/model/card_item.dart';
import 'package:jp_app_material/screen3/widgets/card_with_content.dart';
import 'package:jp_app_material/screen3/widgets/picture_from_center.dart';
import 'package:jp_app_material/screen3/widgets/button_back_to_screen2.dart';
import 'package:jp_app_material/screen3/widgets/button_add_to_order.dart';
import 'package:jp_app_material/screen3/widgets/container_ingridients_reviews.dart';
import 'package:jp_app_material/screen3/widgets/part_ingridients.dart';
import 'package:jp_app_material/screen3/widgets/part_reviews.dart';

class DetailedInfoScreen extends StatefulWidget {
  CardItem item;

  DetailedInfoScreen({super.key, required this.item});

  @override
  State<DetailedInfoScreen> createState() => _DetailedInfoScreenState();
}

class _DetailedInfoScreenState extends State<DetailedInfoScreen> {
//
  Set<Accessory> selectedAccessories = <Accessory>{Accessory.large};
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
    return Stack(
      clipBehavior: Clip.none,
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Positioned(
          child: Container(
            width: 430,
            height: 825,
            color: const Color.fromARGB(255, 40, 40, 40),
          ),
        ),
//______________________________________________________3.Container  IMAGE
        PictureFromCenter(widget: widget),
//______________________________________________________4.Container info forder
        CardWithContent(widget: widget),
//_________________________________________6.Container Choise

        Positioned(
          top: 640,
          left: 20,
          child: Row(
            children: [
              SegmentedButton<Accessory>(
                selected: selectedAccessories,
                multiSelectionEnabled: false,
                showSelectedIcon: false,
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateColor.resolveWith((Set<WidgetState> states) {
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
                    value: Accessory.small,
                    label: Text(
                      "Small",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  ButtonSegment<Accessory>(
                    value: Accessory.medium,
                    label: Text(
                      "Medium",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  ButtonSegment<Accessory>(
                    value: Accessory.large,
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
//______________________________________________________7.Container BTN
        const ButtonBackToScreen2(),
//______________________________________________________7.Container BTN
        ButtonAddToOrder(widget: widget),
      ],
    );
  }
}

enum Accessory { small, medium, large }
