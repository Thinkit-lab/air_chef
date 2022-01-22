import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/location.dart';
import 'package:air_chef/Screens/set_delivery_location.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/checkboxes/tick.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

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
              child: Text('Payment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:10.0, right: 18, left: 18),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 50,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Proceed to Pay",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                           Get.off(()=>DeliveryLocation());
                        },
                      ),
             ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
           padding: const EdgeInsets.only(top:40.0, bottom: 40, right: 18, left:18),
            child: Column(
              children: [
                 SizedBox(height: 20,),
                  Container(
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
                    child: Column(
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Text('Items Total',
                                                   style: GoogleFonts.lato(
                                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                    ),
                        ),
                SizedBox(height: 20,),
                    Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Delivery Charge',
                                               style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16),
                                              ),
                                                ),
                 ),
                 Text('\$5',
                                               style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16),
                                              ),
                                                ),
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),
                        Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Discount',
                                               style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16),
                                              ),
                                                ),
                 ),
                 Text('\$-8.15',
                                               style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 16),
                                              ),
                                                ),
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),
                        Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Tax & Charge',
                                               style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16),
                                              ),
                                                ),
                 ),
                 Text('\$12.45',
                                               style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16),
                                              ),
                                                ),
                           ],
                         ),
                       ),
                       SizedBox(height: 20,),
                       Container(
                         width: MediaQuery.of(context).size.width,
                         height: 2,
                         color: Colors.grey[300],
                       ),
                       SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right:18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Grand Total',
                                                style: GoogleFonts.lato(
                                         textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 24, fontWeight: FontWeight.bold),
                                               ),
                                                 ),
                 ),
                 Text('\$88.95',
                                                style: GoogleFonts.lato(
                                         textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 24, fontWeight: FontWeight.bold),
                                               ),
                                                 ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                      ]),
                  ),
                      SizedBox(height: 40,),
                       Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Delivery Address',
                             style: GoogleFonts.lato(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
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
                       ),
                       SizedBox(height:20),
             Padding(
                         padding: const EdgeInsets.only(right:18.0),
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
                     borderColor: Color(0xff00C393),
                     checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                     border: Border.all(width: 3, color: Color(0xff00C393),),
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
                    SizedBox(height: 5,),
              Text('wjones2@gmail.com',
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
          SizedBox(height: 5,),
              Text('(+1) 655-457-7420',
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
          SizedBox(height: 5,),
              Text('2548 Timber Oak Drive Orcutt, \nCalifornia-564',
              textAlign: TextAlign.left,
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
                  ],
                 ),
                           ],
                         ),
                       ),
                       SizedBox(height: 40,),
                       Padding(
                         padding: const EdgeInsets.only(right:18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Debit Card',
                             style: GoogleFonts.lato(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
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
                       ),
                       SizedBox(height:20),
             Padding(
                         padding: const EdgeInsets.only(right:18.0),
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
                     borderColor: Color(0xff00C393),
                     checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                     border: Border.all(width: 3, color: Color(0xff00C393),),
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
                    SizedBox(height: 5,),
              Text('wjones2@gmail.com',
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
          SizedBox(height: 10,),
              Text('Card No: 4156 10** **** 1200',
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
          SizedBox(height: 5,),
              Text('Exp. Date: 03/19, 09/25',
              textAlign: TextAlign.left,
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
                  ],
                 ),
                           ],
                         ),
                       ),
                       SizedBox(height: 40,),
                Row(
                  children: [
                    RoundCheckBox(  
                     onTap: (selected) {},
                     size: 25,
                     borderColor: Color(0xff00C393),
                     checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                     border: Border.all(width: 3, color: Color(0xff00C393),),
                     ),  
                     SizedBox(width: 15,),
                     Text('Debit Card',
                        style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,),
                          ),
                            ),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    RoundCheckBox(  
                     onTap: (selected) {},
                     size: 25,
                     borderColor: Color(0xff00C393),
                     checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                     border: Border.all(width: 3, color: Color(0xff00C393),),
                     ),  
                     SizedBox(width: 15,),
                     Text('Cash',
                        style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,),
                          ),
                            ),
                  ],
                ),
                   ],
                  
        ),
      ),
    )));
  }
}