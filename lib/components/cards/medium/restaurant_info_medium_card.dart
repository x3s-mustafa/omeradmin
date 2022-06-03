import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../rating.dart';
import '../../small_dot.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.delivertTime,
    required this.press,
  }) : super(key: key);

  final String? image, name, location;
  final double rating;
  final int delivertTime;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(image!, fit: BoxFit.cover),
              ),
            ),
            VerticalSpacing(of: 10),
            Text(
              name!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: kSubHeadTextStyle,
            ),
            Text(
              location!,
              maxLines: 1,
              style: kBodyTextStyle,
            ),
            VerticalSpacing(of: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Rating(rating: rating),

              ],
            )
          ],
        ),
      ),
    );
  }
}
