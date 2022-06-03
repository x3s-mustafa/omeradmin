// It contains all our demo data that we used

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> demoBigImages = [
  "https://www.ngmisr.com/wp-content/uploads/2022/04/7-2.jpg",
  "https://i0.wp.com/faharas.net/wp-content/uploads/2022/02/Samsung-Galaxy-S22-Ultra-5G.jpg",
  "https://tech-echo.com/wp-content/uploads/2020/11/macbook-pro-2020-m1-585x329.jpg",
  "https://i.ytimg.com/vi/a8oNs9szO1k/maxresdefault.jpg",
];

List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "Iphone 13 Pro Max",
    "image": "https://www.ngmisr.com/wp-content/uploads/2022/04/7-2.jpg",
    "location": "Baghdad, Karrada",
    "description": "iPhone 13 Pro and 13 Pro Max. Huge camera upgrades. New OLED display with ProMotion. Fastest smartphone chip ever. Breakthrough battery life.",
    "rating": "4.6",
    "delivertTime": "",
  },
  {
    "name": "S22 ULTRA",
    "image": "https://i0.wp.com/faharas.net/wp-content/uploads/2022/02/Samsung-Galaxy-S22-Ultra-5G.jpg",
    "location": "Baghdad, Karrada",
    "description": "Samsung Galaxy S22 Ultra 5G ; SIM ; Single SIM (Nano-SIM) or Dual SIM (2 Nano-SIMs + eSIM, dual stand-by). IP68 dust/water resistant (up to 1.5m for 30 mins) Dimensions",
    "rating": "4.3",
    "delivertTime": "",
  },
  {
    "name": "Macbook pro air 13 inch",
    "image": "https://tech-echo.com/wp-content/uploads/2020/11/macbook-pro-2020-m1-585x329.jpg",
    "location": "Baghdad, Karrada",
    "description": "MacBook Pro. Our most powerful notebooks. Fast M1 processors, incredible graphics, and spectacular Retina displays. Now available in a 14-inch model.",
    "rating": "4.8",
    "delivertTime": "",
  },
  {
    "name": "Nikon d5600",
    "image":"https://i.ytimg.com/vi/a8oNs9szO1k/maxresdefault.jpg",
    "location": "Baghdad, Karrada",
    "description": "The Nikon D5600 is a 24.2 MP DX format digital SLR featuring SnapBridge connectivity for always connected sharing and more.",
    "rating": "4.6",
    "delivertTime": "",
  },
];

var ar = [
  Align(
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
                        Text("Good item",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),

                      ],
                    ),)
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(padding: EdgeInsets.only(right: 20,bottom: 15),child: Text(
                    "2022/05/21",
                    style: TextStyle(color: Colors.grey,fontSize: 8,fontWeight: FontWeight.w400),
                  ),),
                )
              ],
            ),
          ),
        ),
      )
  ),
];

var itemname = "";
var des = "";
var rating = "";
var loc = "";
var img = "";
