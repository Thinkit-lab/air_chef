import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/saved_cards.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/checkboxes/tick.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/back.png'))),
            title: const Center(
              child: Text('Add New Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:18.0, right: 18),
          child: Container(
             decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                ),
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
             padding: const EdgeInsets.only(top:40.0, bottom: 40, right: 8, left:8),
              child: Column(
                children: [
                         Padding(
                           padding: const EdgeInsets.only(right:18.0),
                           child: Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Add New Address',
                           style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                             ),
                          ),
                   ),
                         ),
                         SizedBox(height:20),
                  Column(
                    children: [
                      Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Your Location',
                           style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                          ),
                   ),
                   SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                       Expanded(
                         child: Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Ring Road, New York',
                           style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                          ),
                   ),
                       ),
                       GestureDetector(
                  onTap: (){},
                  child: Text('Change',
                                style: GoogleFonts.lato(
                           textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                               ),
                       ),
                 ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0),
                    child: Container(
                      height: 1,
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('First Name*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                 Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Last Name*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                                      Expanded(
                                        child: Material(
                                          elevation: 1.0,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          child: TextField(
                                            onChanged: (String value){},
                                            cursorColor: const Color(0xffF37032),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                               EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                      Expanded(
                                        child: Material(
                                          elevation: 1.0,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          child: TextField(
                                            onChanged: (String value){},
                                            cursorColor: const Color(0xffF37032),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                               EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                          ),
                                        ),
                                      ),
                      ],
                    ),
                    Padding(
                                        padding: const EdgeInsets.symmetric(vertical:10.0),
                                        child: Container(
                      height: 1,
                      color: Colors.black12,
                                        ),
                                      ),
                      SizedBox(height: 20,),
                      Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Email Address*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                                        SizedBox(height: 10,),
                Material(
                        elevation: 1.0,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: TextField(
                          onChanged: (String value){},
                        cursorColor: const Color(0xffF37032),
                            decoration: const InputDecoration(
                            border: InputBorder.none,
                         contentPadding:
                       EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                ),
                              ),
              SizedBox(height: 20,),
                      Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Mobile Number*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                                        SizedBox(height: 10,),
                Material(
                        elevation: 1.0,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: TextField(
                          onChanged: (String value){},
                        cursorColor: const Color(0xffF37032),
                            decoration: const InputDecoration(
                            border: InputBorder.none,
                         contentPadding:
                       EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                ),
                              ),
              SizedBox(height: 20,),
                      Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('House No / Flat No / Floor*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                                        SizedBox(height: 10,),
                Material(
                        elevation: 1.0,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: TextField(
                          onChanged: (String value){},
                        cursorColor: const Color(0xffF37032),
                            decoration: const InputDecoration(
                            border: InputBorder.none,
                         contentPadding:
                       EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                ),
                              ),
                SizedBox(height: 20,),
                      Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Society / Street Name*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                                        SizedBox(height: 10,),
                Material(
                        elevation: 1.0,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: TextField(
                          onChanged: (String value){},
                        cursorColor: const Color(0xffF37032),
                            decoration: const InputDecoration(
                            border: InputBorder.none,
                         contentPadding:
                       EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                ),
                              ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black12),
                        width: 60,
                        height: 40,
                        child: Center(
                          child: Text('Home',
                                   style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                     ),
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black),
                        width: 60,
                        height: 40,
                        child: Center(
                          child: Text('Work',
                                   style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 14,),
                                     ),
                                  ),
                        ),
                      ),
                    ),
                     SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black12),
                        width: 60,
                        height: 40,
                        child: Center(
                          child: Text('Other',
                                   style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                     ),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Padding(
        padding: const EdgeInsets.only(bottom:10.0, right: 18, left: 18),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 50,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Save Address",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                           Get.off(()=>MySavedCards());
                        },
                      ),
             ),
      ),
                    ],
                  ),
                     ],
                   ),
                 ),
               ),
        ),         
        ),
      );
  }
}