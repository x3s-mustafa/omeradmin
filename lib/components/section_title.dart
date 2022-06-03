import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    this.isMainSection = true,
    required this.title,
    required this.press,
  }) : super(key: key);

// Main Section means on Home page section
  final bool isMainSection;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isMainSection ? title : title.toUpperCase(),
            style: isMainSection
                ? kH3TextStyle
                : kSecondaryBodyTextStyle.copyWith(fontSize: 16),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              isMainSection ? "See all" : "Clear all".toUpperCase(),
              style: isMainSection
                  ? Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: kActiveColor)
                  : TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: kMainColor.withOpacity(0.64),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
