import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../screens/filter/filter_screen.dart';
import '../../size_config.dart';

import '../signUp/additem.dart';
import 'components/body.dart';

class adminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// If you set your home screen as first screen make sure call [SizeConfig().init(context)]
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: SizedBox(),
      title: Column(
        children: [
          Text(
            "Welcome".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: kActiveColor),
          ),
          Text(
            "Omer Admin",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      actions: [

        IconButton(onPressed: (){

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => addSginup(),
            ),
          );

        }, icon: Icon(Icons.add))

      ],
    );
  }
}
