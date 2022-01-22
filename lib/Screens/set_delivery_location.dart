import 'package:air_chef/Screens/add_address.dart';
import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/order_history.dart';
import 'package:air_chef/Screens/processing.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/checkboxes/tick.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class DeliveryLocation extends StatefulWidget {
  const DeliveryLocation({Key? key}) : super(key: key);

  @override
  _DeliveryLocationState createState() => _DeliveryLocationState();
}

class _DeliveryLocationState extends State<DeliveryLocation> {

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
              child: Text('Set Delivery Location',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
           padding: const EdgeInsets.only(top:40.0, bottom: 40, right: 18, left:18),
            child: Column(
              children: [
                       Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Saved Address',
                         style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                           ),
                        ),
                 ),
                       ),
                       SizedBox(height:20),
             Container(
              //  height: 50,
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
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 18.0),
                 child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       width: 40,
                       height: 40,
                    alignment: AlignmentDirectional.topStart,
                    child: RoundCheckBox(  
                       onTap: (selected) {
                          Get.off(()=>Processing());
                       },
                       size: 25,
                       borderColor: Colors.black,
                       checkedWidget: Icon(Icons.circle, color: Colors.black,),
                       border: Border.all(width: 3, color: Colors.black,),
                       ),  
                   ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Text('Williams Jones',
                          style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,),
                  ),
                    ),
                      ),
                      SizedBox(height: 10,),
              Text('2548 Timber Oak Drive Orcutt,...',
                          style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                  ),
                    ),
          SizedBox(height: 5,),
                    ],
                   ),
                   ],
                 ),
               ),
             ),
            SizedBox(height: 20,),
            Container(
              //  height: 50,
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
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 18.0),
                 child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       width: 40,
                       height: 40,
                    alignment: AlignmentDirectional.topStart,
                    child: RoundCheckBox(  
                       onTap: (selected) {},
                       size: 25,
                       borderColor: Colors.black,
                       checkedWidget: Icon(Icons.circle, color: Colors.black,),
                       border: Border.all(width: 3, color: Colors.black,),
                       ),  
                   ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Text('Mikie’s house H1',
                          style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,),
                  ),
                    ),
                      ),
                      SizedBox(height: 10,),
              Text('4710 Breezewood Court Dodge City,...',
                          style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                  ),
                    ),
          SizedBox(height: 5,),
                    ],
                   ),
                   ],
                 ),
               ),
             ),
            SizedBox(height: 20,),
            Container(
              //  height: 50,
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
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 18.0),
                 child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       width: 40,
                       height: 40,
                    alignment: AlignmentDirectional.topStart,
                    child: RoundCheckBox(  
                       onTap: (selected) {},
                       size: 25,
                       borderColor: Colors.black,
                       checkedWidget: Icon(Icons.circle, color: Colors.black,),
                       border: Border.all(width: 3, color: Colors.black,),
                       ),  
                   ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Text('Joseph house 1',
                          style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,),
                  ),
                    ),
                      ),
                      SizedBox(height: 10,),
              Text('1334 Sussex Court Waco,...',
                          style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                  ),
                    ),
          SizedBox(height: 5,),
                    ],
                   ),
                   ],
                 ),
               ),
             ),
            SizedBox(height: 40,),
            Padding(
        padding: const EdgeInsets.only(bottom:10.0, ),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 50,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Add New Address",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                           Get.off(()=>AddNewAddress());
                        },
                      ),
             ),
      ),
            SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Current Location',
                         style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                           ),
                        ),
                 ),
                       ),
                       SizedBox(height:20),
            Container(
              //  height: 50,
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
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 18.0),
                 child: Column(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:18.0),
                       child: SimpleSearchWidget(hintText: 'Search for Area, Street Name'),
                     ),
                     SizedBox(height: 40,),
                     Text('Or',
                         style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                           ),
                        ),
                        const SizedBox(height: 40,),
                        Padding(
        padding: const EdgeInsets.only(bottom:10.0, left: 18, right: 18),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Colors.white,),
               width: MediaQuery.of(context).size.width,
               height: 50,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Icon(Icons.my_location, color: Color(0xff00C393),),
                          SizedBox(width: 5,),
                        Text("Use Current Location",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xff00C393),),),
                        ],
        ),
             ),
      ),
                   ],
                 ),
               ),
             ), 
                   ],
                  
        ),
      ),
    )));
  }
}