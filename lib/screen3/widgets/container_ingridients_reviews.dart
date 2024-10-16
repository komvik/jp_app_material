import 'package:flutter/material.dart';
import 'package:jp_app_material/screen3/widgets/part_ingridients.dart';
import 'package:jp_app_material/screen3/widgets/part_reviews.dart';

class ContainerIngridientsReviews extends StatelessWidget {
  const ContainerIngridientsReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 30,
        ),
        PartIngridients(),
        SizedBox(width: 100),
        PartReviews(),
      ],
    );
  }
}
