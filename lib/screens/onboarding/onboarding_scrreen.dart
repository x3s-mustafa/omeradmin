import 'package:flutter/material.dart';
import 'package:food_ui_kit/size_config.dart';

import '../home/home_screen.dart';
import '../signIn/sign_in_screen.dart';
import '../signUp/sign_up_screen.dart';
import 'components/body.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Onboarding is our starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
