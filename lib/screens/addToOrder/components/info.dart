import 'package:flutter/material.dart';
import 'package:food_ui_kit/demoData.dart';
import '../../../components/price_range_and_food_type.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.33,
          child: Image.network(
            "$img",
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$itemname", style: kH3TextStyle),
              VerticalSpacing(of: 5),
              Text(
                "$des",
                style: kBodyTextStyle,
              ),
              VerticalSpacing(of: 10),
              PriceRangeAndFoodtype(
                foodType: ["$rating","$loc"],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
