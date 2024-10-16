import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/repositories/card_data.dart';
import 'package:jp_app_material/screen2/widgets/recommend_card.dart';
import 'package:jp_app_material/screen3/detailed_info_screen.dart';

class ContainerForRecommendCard extends StatelessWidget {
  const ContainerForRecommendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                    return DetailedInfoScreen(item: cardData[index]);
                  });
            },
            child: RecommendCard(item: cardData[index]),
          );
        },
      ),
    );
  }
}
