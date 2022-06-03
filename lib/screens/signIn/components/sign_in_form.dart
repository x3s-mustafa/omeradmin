import 'package:flutter/material.dart';
import 'package:food_ui_kit/components/bottom_nav_bar.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/buttons/primary_button.dart';
import '../../../screens/forgotPassword/forgot_password_screen.dart';
import '../../home/adminhome.dart';
import '../../home/home_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}
var email = TextEditingController();
var password = TextEditingController();
class _SignInFormState extends State<SignInForm> {
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  FocusNode? _passwordNode;

  @override
  void initState() {
    super.initState();
    _passwordNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? _email, _password;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email Field
          TextFormField(
            controller: email,
            validator: emailValidator,
            onSaved: (value) => _email = value,
            textInputAction: TextInputAction.next,
            onEditingComplete: () {
              // Once user click on Next then it go to password field
              _passwordNode!.requestFocus();
            },
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "رقم الهاتف",
              contentPadding: kTextFieldPadding,
            ),
          ),
          VerticalSpacing(),

          // Password Field
          TextFormField(
            controller: password,
            focusNode: _passwordNode,
            obscureText: _obscureText,
            validator: passwordValidator,
            onSaved: (value) => _password = value,
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            decoration: InputDecoration(
              hintText: "الرمز السري",
              contentPadding: kTextFieldPadding,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: _obscureText
                    ? const Icon(Icons.visibility_off, color: kBodyTextColor)
                    : const Icon(Icons.visibility, color: kBodyTextColor),
              ),
            ),
          ),
          VerticalSpacing(),

          // Forget Password
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPasswordScreen(),
              ),
            ),
            child: Text(
              "هل نسيت الرمز السري",
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          VerticalSpacing(),

          // Sign In Button
          PrimaryButton(
            text: "تسجيل الدخول",

            press: () {
              if(email.text == "admin" && password.text == "0000"){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => adminHomeScreen(),
                  ),
                );
              }else{

                showDialog(

                  context: context,
                  builder:
                      (BuildContext context) {

                    return AlertDialog(

                        shape: RoundedRectangleBorder(

                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(
                                    10.0))),

                        title: Center(child: Text('Incorrect entries',style: TextStyle(fontFamily: 'bukra'),),),

                        backgroundColor: Colors.white,


                        content:Container(
                          height: 180,
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 200,
                                height: 40,


                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),

                                ),
                                child: Center(
                                  child: Icon(Icons.error,size: 70 ,color: Colors.red,),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                width: 200,
                                height: 40,



                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),

                                ),
                                child: Center(
                                  child: Text(
                                    "Please check your username or password.",
                                    style: TextStyle(color: Colors.black,fontFamily: 'bukra'),textAlign: TextAlign.center,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )

                    );
                  },
                );


              }


            },
          )
        ],
      ),
    );
  }
}
