import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../components/welcome_text.dart';
import '../../../screens/signIn/sign_in_screen.dart';
import '../../../size_config.dart';
import '../../../components/buttons/socal_button.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WelcomeText(
                title: "انشاء حساب",
                text: "ادخل المعلومات ادناه ثم اضغط التسجيل",
              ),

              // Sign Up Form
              SignUpForm(),
              VerticalSpacing(of: 20),

              // Already have account
              Center(
                child: Text.rich(
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontWeight: FontWeight.w500),
                    text: "هل لديك حساب ؟ ",
                    children: <TextSpan>[
                      TextSpan(
                        text: "سجل الدخول ",
                        style: TextStyle(color: kActiveColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInScreen(),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              VerticalSpacing(of: 20),
              Center(
                child: Text(
                  "By Signing up you agree to our Terms \nConditions & Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ),
              VerticalSpacing(of: 15),
              kOrText,
              VerticalSpacing(of: 15),

              // Facebook
              SocalButton(
                press: () {},
                text: "التسجيل عن طريق الفيسبوك",
                color: Color(0xFF395998),
                icon: SvgPicture.asset(
                  'assets/icons/facebook.svg',
                  color: Color(0xFF395998),
                ),
              ),
              VerticalSpacing(of: 15),

              // Google
              SocalButton(
                press: () {},
                text: "التسجيل عن طريق الجيميل",
                color: Color(0xFF4285F4),
                icon: SvgPicture.asset(
                  'assets/icons/google.svg',
                ),
              ),
              VerticalSpacing(),
            ],
          ),
        ),
      ),
    );
  }
}
