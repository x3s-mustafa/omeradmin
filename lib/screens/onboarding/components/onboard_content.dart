import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ui_kit/constants.dart';

import '../../../size_config.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.illustration,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String? illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.network("https://uobaghdad.edu.iq/wp-content/uploads/2019/02/IMG-20190109--296x300.png"),
        ),
        VerticalSpacing(of: 50),
        Text(
          title!,
          style: kHeadlineTextStyle,
        ),
        VerticalSpacing(of: 8),
        Text(
          text!,
          style: kBodyTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
