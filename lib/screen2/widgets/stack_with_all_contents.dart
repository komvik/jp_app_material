import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/widgets/card_angris_yummy_burger.dart';
import 'package:jp_app_material/screen2/widgets/container_for_recommend_card.dart';
import 'package:jp_app_material/screen2/widgets/container_list_categories.dart';
import 'package:jp_app_material/screen2/widgets/segment_star_card_angris_yummy_burger.dart';

class StackWithAllContents extends StatelessWidget {
  const StackWithAllContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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

        const ContainerListCategories(),
        //________________________________
        Positioned(
            top: 270,
            left: 40,
            child: Transform.scale(
                scale: 1.14,
                child: Image.asset("assets/details/Top Card.png"))),
        //______________________________________
        const SegmentStarCardAngrisYummyBurger(),
        //______________________________________
        const CardAngrisYummyBurger(),
        //______________________________________
        const Positioned(
          top: 570,
          left: 25,
          child: Text(
            "We Recommend",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        //______________________________________
        Positioned(
            top: 200,
            left: 70,
            child: Transform.scale(
                scale: 0.54,
                child: Image.asset("assets/grafiken/Burger_3D.png"))),
        //____________________ Container ->Image->Text->Price->Icon
        const ContainerForRecommendCard(),
      ],
    );
  }
}
