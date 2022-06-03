import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart' as dateo;

import '../../components/buttons/primary_button.dart';



var fullname = TextEditingController();
var  university_email = TextEditingController();
var  deparment = TextEditingController();
var  stage = TextEditingController();
var  phone = TextEditingController();
var    password = TextEditingController();
var   province   = TextEditingController();
var   aera = TextEditingController();
var   studentidcard = TextEditingController();

var _image;
var _image2;
var url1 = "";
var url2 = "";


class addSginup extends StatefulWidget {


  @override
  _SginupState createState() => _SginupState();
}

class _SginupState extends State<addSginup> {

  _imgFromCamera() async {
    final ImagePicker _picker = ImagePicker();

    // Capture a photo
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

    File file = File( photo!.path );
    setState(() {
      _image = file;
    });
  }

  _imgFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    File file = File( image!.path );
    setState(() {
      _image = file;
    });
  }

  _imgFromCamera2() async {
    final ImagePicker _picker = ImagePicker();

    // Capture a photo
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    File file = File( photo!.path );
    setState(() {
      _image = file;
    });
  }

  _imgFromGallery2() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    File file = File( image!.path );
    setState(() {
      _image2 = file;
    });
  }



  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  void _showPicker2(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery2();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera2();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Text(
                "Welcome App rating",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Add new Item by admin",
                style: TextStyle(color: Colors.grey,fontSize: 12),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20,left: 30,right: 30),
              child:  TextField(
                style: TextStyle(color: Colors.black),
                controller: fullname,
                decoration: InputDecoration(
                  labelText: "Item Name",
                  labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      )
                  ),
                ),
              ),

            ),
            Padding(padding: EdgeInsets.only(top: 15,left: 30,right: 30),
              child:  TextField(
                style: TextStyle(color: Colors.black),
                controller: university_email,
                decoration: InputDecoration(
                  labelText: "Descriptions",
                  labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      )
                  ),
                ),
              ),

            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 30,right: 30),
              child:  TextField(
                style: TextStyle(color: Colors.black),
                controller: deparment,
                decoration: InputDecoration(
                  labelText: "Location",
                  labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.indigo,
                      )
                  ),
                ),
              ),

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(padding: EdgeInsets.only(top: 30,right: 10),
                  child:  Center(
                    child: GestureDetector(
                      onTap: () {
                        _showPicker2(context);
                      },
                      child: CircleAvatar(
                        radius: 55,
                        child: _image2 != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            _image2,
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        )
                            : Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          width: 100,
                          height: 100,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),


            Padding(padding: EdgeInsets.all(20),child:  PrimaryButton(
              text: "Add Item",

              press: () {

                DateTime now = DateTime.now();
                String formattedDate = dateo.DateFormat('yyyy/MM/dd').format(now);
                String formattedDate2 = dateo.DateFormat('yyyy-MM-dd HH:mm:ss').format(now);


                setState(() {


                });






              },
            ),),

          ],
        ),
      ),
    );
  }



}
