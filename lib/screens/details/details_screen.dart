import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ui_kit/screens/search/search_screen.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('All items',style: TextStyle(color: Colors.black),),
      actions: [

        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {


            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
