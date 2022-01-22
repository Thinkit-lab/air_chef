import 'dart:io';

import 'package:air_chef/Screens/add_food.dart';
import 'package:air_chef/Screens/biography.dart';
import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/orders.dart';
import 'package:air_chef/Screens/search.dart';
import 'package:air_chef/Screens/set_availability.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:air_chef/widget/upload_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';


class ProfileBioPage extends StatefulWidget {
  const ProfileBioPage({Key? key}) : super(key: key);

  @override
  State<ProfileBioPage> createState() => _ProfileBioPageState();

  void onSelectImage(savedImage) {}
}

class _ProfileBioPageState extends State<ProfileBioPage> {
  final List<String> weekDays = ["S", "M", "T", "W", "T", "F", "S"];
final List<int> dates = [5, 6, 7, 8, 9, 10, 11];

final int selected = 1;
  final TextStyle selectedText = TextStyle(
    color: Color(0xff00C393),
    fontWeight: FontWeight.bold,
  );
  final TextStyle daysText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );

  get path_provider => null;

  get path => null;
  UploadImage uploadImage = UploadImage();
  Widget cards(image, title,) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 6.0,
        //   ),
        // ],
        // color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                     image, fit: BoxFit.fill,
                     width: 180,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:110.0, left: 30),
                    child: Container(
                      // alignment: AlignmentDirectional.bottomEnd,
                      child: Text(title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white,)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/back.png'))),
            title: const Center(
              child: Text('Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top:15.0, right: 18),
                child: Stack(
                  children: [ 
                    Icon(Icons.logout, color: Colors.black),
                    ]),
              ),
              ],
          ),
        bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.black),
                  child: Row(
                    children: [
                      IconButton(onPressed:(){
                        Get.off(()=>SearchList());
                      }, icon: Icon(Icons.home), color: Colors.white, hoverColor: Colors.black,),
                    Text('Home',
                        textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 16, color: Colors.white),
                                      ),
                        ),
                    ],
                  ),
                ),
              ),
              IconButton(onPressed:(){
                Get.off(()=>AddFood());
              }, icon: Icon(Icons.add, size: 30,)),
              IconButton(onPressed:(){
                Get.off(()=>Orders());
              }, icon: Icon(Icons.notifications_on,)),
              IconButton(onPressed:(){
                Get.off(()=>ProfileBioPage());
              }, icon: Icon(Icons.person, color: Color(0xff00C393),)),
            ],
          ),
        ),
      ),

        body: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: 
                  <Widget>[
                    Stack(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(shape: BoxShape.circle, 
                                        border: Border.all(color: Color(0xff00C393),),color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:140.0,top: 140),
                                      child: GestureDetector(
                                        onTap: (){
                                          showDialog();
                                        },
                                        child: Container(
                                              width: 70,
                                         height: 50,
                                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff00C393),),
                                                  child: Icon(Icons.edit, color: Colors.white,),
                                                ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25.0, bottom: 25.0, right: 12),
                                  child: Center(
                                    child: Container(
                                      width: 150,
                                      height: 150,
                                      child: CircleAvatar(backgroundImage: AssetImage('assets/images/Image.png',), radius: 20,),
                                    ),
                                  ),
                                ),
                                 
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal:18.0),
                       child: Center(
                         child: Text('Williams Kitchen',
                                                       style: GoogleFonts.lato(
                                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
                                                      ),
                                                        ),
                       ),
                     ),
                     SizedBox(height: 5,),
                     Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.location_on, color: Color(0xff00C393),),
                           Text('23 Street, New York',
                                                         style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18,),
                                                        ),
                                                          ),
                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(18.0),
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         height: 100,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color:Color(0xff00C393),),
                         child: Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Column(
                                 children: [
                                   Text('05',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                  SizedBox(height: 10,),
                                  Text('Orders in Queue',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Text('15',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                  SizedBox(height: 10,),
                                  Text('Reviews',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                alignment: AlignmentDirectional.topStart,
                                          child: Text('Biography',
                                    style: GoogleFonts.lato(
                             textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                   ),
                                     ),
                                        ),
                            GestureDetector(
                              onTap: (){
                                Get.off(()=>Biography());
                              },
                              child: Image(image: AssetImage('assets/images/edit.png'),)),
                          ],
                        ),
                      ),
                                  SizedBox(height: 10,),
                     Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              // height: 220,
                decoration: BoxDecoration( borderRadius:
                BorderRadius.circular(8), color: Colors.white),
                child: Material(
                  // elevation: 2.0,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus arcu donec est pretium arcu."
                  "Placerat eros quisque faucibus in. Aliquet in mi eu facilisis. Lectus euismod lacinia augue" 
                  "in risus sit pellentesque faucibus sed. Iaculis euismod sed ornare habitant curabitur" 
                  "imperdiet arcu rutrum id. Justo arcu in felis cras quisque ante velit. Faucibus fames" 
                  "ridiculus amet, dui sed.",
                                    style: GoogleFonts.lato(
                             textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 14,),
                                   ),
                                     ),
                ),
            ),
          ),
          SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                alignment: AlignmentDirectional.topStart,
                                          child: Text('Availability',
                                    style: GoogleFonts.lato(
                             textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                   ),
                                     ),
                                        ),
                            GestureDetector(
                              onTap: (){
                                Get.off(()=>SetAvailability());
                              },
                              child: Image(image: AssetImage('assets/images/edit.png'),)),
                          ],
                        ),
                      ),
                  SizedBox(height: 20,),
                  Row(
                children: weekDays.map((w) {
                  return Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: weekDays.indexOf(w) == selected
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0))),
                      padding: const EdgeInsets.only(top: 20, bottom: 8.0),
                      child: Text(
                        w,
                        style: weekDays.indexOf(w) == selected
                            ? selectedText
                            : daysText,
                      ),
                    ),
                  );
                }).toList(),
              ),
                   Row(
                children: dates.map((d) {
                  return Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: dates.indexOf(d) == selected
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30.0))),
                      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                      child: Text("$d",
                          style: dates.indexOf(d) == selected
                              ? selectedText
                              : daysText),
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white,
                  boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],),
        child: Column(
          children: [
            Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)), color: Color(0xff00C393),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timelapse, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Available Time',
                                                       style: GoogleFonts.mulish(
                                                textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                                      ),
                                                        ),
                  ],
                ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.local_shipping, color: Color(0xff00C393),),
                      SizedBox(width: 10,),
                      Text('Delivery: 6:00PM  onward',
                                                         style: GoogleFonts.mulish(
                                                  textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16,),
                                                        ),
                                                          ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.time_to_leave, 
                      color: Color(0xff00C393),),
                      SizedBox(width: 10,),
                      Text('Pick up:6:00PM-7:00PM',
                               style: GoogleFonts.mulish(
                                  textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16,),
                          ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
                ),
              ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
  
  void showDialog() {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (_, __, ___) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Dialog(
          insetPadding: EdgeInsets.symmetric(vertical: 310),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  GestureDetector(
                    onTap:() {
                      uploadImage.takePictureByGallery();
                    },
                    child: Row(
                      children:[
                        Icon(Icons.photo),
                        SizedBox(width: 10,),
                        Text('Change Photo',
                                 style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Row(
                      children:[
                        Icon(Icons.person),
                        SizedBox(width: 10,),
                        Text('Remove Photo',
                                 style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                        ),
                      ],
                    ),
                  ),
                ],),
                margin: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}

}