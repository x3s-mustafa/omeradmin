import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_ui_kit/components/buttons/primary_button.dart';
import 'package:food_ui_kit/constants.dart';
import 'package:food_ui_kit/screens/orderDetails/order_details_screen.dart';
import 'package:food_ui_kit/size_config.dart';
import 'package:intl/intl.dart' as dateo;
import '../../../demoData.dart';
import '../add_to_order_screen.dart';
import 'info.dart';
import 'required_section_title.dart';
import 'rounded_button.dart';
import 'rounded_checkedbox_list_tile.dart';

var rr = "";
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

var comment = TextEditingController();
class _BodyState extends State<Body> {
  // for demo we select 2nd one
  int choiceOfTopCookie = 1;
  int choiceOfBottomCookie = 1;
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Info(),
            VerticalSpacing(),


           Padding(padding: EdgeInsets.all(20),child:  TextFormField(

             controller: comment,
             validator: emailValidator,

             textInputAction: TextInputAction.next,
             onEditingComplete: () {
               // Once user click on Next then it go to password field

             },
             style: kSecondaryBodyTextStyle,
             maxLines: 5,
             cursorColor: kActiveColor,
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
               hintText: "اكتب هنا",
               contentPadding: kTextFieldPadding,
             ),
           ),),
            Center(
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                  rr = "${rating}";
                },
              ),

            ),
            Padding(padding: EdgeInsets.all(20),child:  PrimaryButton(
              text: "اضافة تعليق",

              press: () {

                DateTime now = DateTime.now();
                String formattedDate = dateo.DateFormat('yyyy/MM/dd').format(now);
                String formattedDate2 = dateo.DateFormat('yyyy-MM-dd HH:mm:ss').format(now);


                setState(() {

                  ar.add(Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(

                          height: 80,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Colors.white,




                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.indigo,
                                      radius: 25,
                                      child: Icon(Icons.person,color: Colors.white,size: 25,),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10),child:  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(padding: EdgeInsets.only(bottom: 10,),child:  Text("Omer2020",style: TextStyle(color: Colors.grey,fontSize: 10),),),
                                        Text("${comment.text}",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),

                                      ],
                                    ),)
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(padding: EdgeInsets.only(right: 20,bottom: 15),child: Text(
                                    "Rate: ${rr}   |   ${formattedDate}",
                                    style: TextStyle(color: Colors.grey,fontSize: 8,fontWeight: FontWeight.w400),
                                  ),),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                  ));
                });

                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => AddToOrderScrreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );





              },
            ),),

            Column(
              children: ar
            ),

            VerticalSpacing(),





          ],
        ),
      ),
    );
  }
}

const List<String> choiceOfTopCookies = [
  "Choice of top Cookie",
  "Cookies and Cream",
  "Funfetti",
  "M and M",
  "Red Velvet",
  "Peanut Butter",
  "Snickerdoodle",
  "White Chocolate Macadamia",
];
