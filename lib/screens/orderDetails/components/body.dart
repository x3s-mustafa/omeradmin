import 'package:flutter/material.dart';
import 'package:food_ui_kit/components/buttons/primary_button.dart';
import 'package:food_ui_kit/constants.dart';
import 'package:food_ui_kit/size_config.dart';

import 'order_item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            VerticalSpacing(),
            // List of cart items
            ...List.generate(
              demoItems.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: OrderedItemCard(
                  title: demoItems[index]["title"],
                  description:
                      "Shortbread, chocolate turtle cookies, and red velvet.",
                  numOfItem: demoItems[index]["numOfItem"],
                  price: demoItems[index]["price"].toDouble(),
                ),
              ),
            ),
            buildPriceRow(text: "Subtotal", price: 28.0),
            VerticalSpacing(of: 10),
            buildPriceRow(text: "Delivery", price: 0),
            VerticalSpacing(of: 10),
            buildTotal(price: 20),
            VerticalSpacing(of: 40),
            PrimaryButton(
              text: "Checkout (\$20.10)",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }

  Row buildTotal({required double price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: "Total ",
            style: kBodyTextStyle.copyWith(
                color: kMainColor, fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: "(incl. VAT)",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Text(
          "\$$price",
          style: kBodyTextStyle.copyWith(
              color: kMainColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row buildPriceRow({required String text, required double price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kBodyTextStyle.copyWith(color: kMainColor),
        ),
        Text(
          "\$$price",
          style: kBodyTextStyle.copyWith(color: kMainColor),
        )
      ],
    );
  }
}

const List<Map> demoItems = [
  {
    "title": "Cookie Sandwich",
    "price": 7.4,
    "numOfItem": 1,
  },
  {
    "title": "Combo Burger",
    "price": 12,
    "numOfItem": 1,
  },
  {
    "title": "Oyster Dish",
    "price": 8.6,
    "numOfItem": 2,
  },
];
