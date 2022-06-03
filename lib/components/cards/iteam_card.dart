import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import '../small_dot.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.foodType,
    required this.price,
    required this.priceRange,
    required this.press,
  }) : super(key: key);

  final String? title, description, image, foodType, priceRange;
  final String? price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = kSecondaryBodyTextStyle.copyWith(
      color: kMainColor.withOpacity(0.64),
      fontWeight: FontWeight.normal,
    );
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: getProportionateScreenWidth(110),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.network(
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              HorizontalSpacing(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      maxLines: 1,
                      style: kSubHeadTextStyle.copyWith(
                          fontSize: getProportionateScreenWidth(18)),
                    ),
                    Text(
                      description!,
                      style: kBodyTextStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [

                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(5)),
                          child: SmallDot(),
                        ),
                        Text(foodType!, style: textStyle),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: kActiveColor,
                            borderRadius: const BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Text(
                            price.toString(),
                            style: kCaptionTextStyle.copyWith(color: Colors.white),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
