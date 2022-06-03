import 'package:flutter/material.dart';
import 'package:food_ui_kit/components/buttons/primary_button.dart';
import 'package:food_ui_kit/components/welcome_text.dart';
import 'package:food_ui_kit/constants.dart';
import 'package:food_ui_kit/size_config.dart';

class ResetEmailSentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(
                title: "Reset email sent",
                text:
                    "We have sent a instructions email to \ntheflutterway@email.com."),
            VerticalSpacing(),
            PrimaryButton(
              text: "Send again",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
