import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/buttons/primary_button.dart';
import '../../../components/buttons/socal_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/welcome_text.dart';
import '../../../screens/signUp/sign_up_screen.dart';
import '../../home/home_screen.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WelcomeText( 
              title: "اهلا بكم",
              text:
                  "للتسجيل الدخول ادخل رقم الهاتف والرمز السري",
            ),

            // SignInForm contains forget password
            SignInForm(),
            VerticalSpacing(),

            PrimaryButton(
              text: "تسجيل الدخول كـ(زائر)",

              press: () {


                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );




              },
            )


            // Google

          ],
        ),
      ),
    );
  }
}
