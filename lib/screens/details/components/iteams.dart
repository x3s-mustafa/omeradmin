import 'package:flutter/material.dart';
import 'package:food_ui_kit/screens/addToOrder/add_to_order_screen.dart';
import '../../../components/cards/iteam_card.dart';
import '../../../constants.dart';
import '../../../demoData.dart';
import '../../../size_config.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: demoTabs.length,
          child: TabBar(
            isScrollable: true,
            unselectedLabelColor: kMainColor.withOpacity(0.54),
            labelStyle: kH3TextStyle,
            onTap: (value) {
              // you will get selected tab index


            },
            tabs: demoTabs,
          ),
        ),
         VerticalSpacing(),
        ...List.generate(
          demoMediumCardData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding - 5, vertical: kDefaultPadding / 2),
            child: ItemCard(
              title: demoMediumCardData[index]["name"],
              description: demoMediumCardData[index]["description"],
              image: demoMediumCardData[index]["image"],
              foodType: demoMediumCardData[index]['location'],
              price: demoMediumCardData[index]["rating"],
              priceRange: demoMediumCardData[index]["rating"],
              press: () {

                itemname = demoMediumCardData[index]["name"];
                des = demoMediumCardData[index]["description"];
                img = demoMediumCardData[index]["image"];
                rating = demoMediumCardData[index]["rating"];
                loc = demoMediumCardData[index]['location'];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddToOrderScrreen(),
                  ),
                );


              },
            ),
          ),
        ),
      ],
    );
  }
}

final List<Tab> demoTabs = <Tab>[
  Tab(
    child: Text('Most Populars'),
  ),
  Tab(
    child: Text('Best Rating'),
  ),
  Tab(
    child: Text('Mobile'),
  ),
  Tab(
    child: Text('Camera'),
  ),
  Tab(
    child: Text('Internet'),
  ),
];

final List<Map<String, dynamic>> demoData = List.generate(
  3,
  (index) => {
    "image": "assets/images/featured _items_${index + 1}.png",
    "title": "Cookie Sandwich",
    "description": "Shortbread, chocolate turtle cookies, and red velvet.",
    "price": 7.4,
    "foodType": "Chinese",
    "priceRange": "\$" * 2,
  },
);
