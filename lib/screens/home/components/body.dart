import 'package:flutter/material.dart';
import 'package:food_ui_kit/screens/details/details_screen.dart';
import 'package:food_ui_kit/screens/featured/featurred_screen.dart';

import '../../../components/cards/big/restaurant_info_big_card.dart';
import '../../../constants.dart';
import '../../../components/section_title.dart';
import '../../../screens/home/components/promotion_banner.dart';
import '../../../components/cards/big/big_card_image_slide.dart';
import '../../../demoData.dart';
import '../../../size_config.dart';
import 'medium_card_list.dart';

class Body extends StatelessWidget {
  List data = demoMediumCardData..shuffle();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacing(of: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BigCardImageSlide(images: demoBigImages),
            ),
            VerticalSpacing(of: 50),
            SectionTitle(
              title: "Best Rating",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              ),
            ),
            VerticalSpacing(of: 15),
            MediumCardList(),


            VerticalSpacing(of: 50),
            SectionTitle(
              title: "Suggestions",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              ),
            ),


            VerticalSpacing(of: 15),
            MediumCardList(),


            VerticalSpacing(of: 50),
            SectionTitle(title: "All items" ,press: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(),
        ),
      ),),
            VerticalSpacing(of: 15),
            MediumCardList(),


          ],
        ),
      ),
    );
  }
}
