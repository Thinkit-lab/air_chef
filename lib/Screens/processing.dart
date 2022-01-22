import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/checkboxes/tick.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Processing extends StatefulWidget {
  const Processing({Key? key}) : super(key: key);

  @override
  _ProcessingState createState() => _ProcessingState();
}

class _ProcessingState extends State<Processing> {

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
              child: Text('Processing',
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
           padding: const EdgeInsets.only(top:20.0, bottom: 0, right: 18, left:18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                         Text('Order Placed',
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                            ),
                      SizedBox(height: 10,),
                      Text('Est. Arrival: 3 pm',
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black54, letterSpacing: .5, fontSize: 18,),
                          ),
                            ),
                      ],
                    ),
                    Image(image: AssetImage('assets/images/food1.png'),)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Your order is in the nearest store.',
                                    style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                              ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff00C393),),
                          child: Icon(Icons.shopping_basket_sharp, color: Colors.white,),
                        ),
                        SizedBox(height: 5,),
                        Text('Processing \nOrder',
                        textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                              ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        width: 30,
                        height: 4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Color(0xff00C393),),
                      ),
                    ),
                  Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff00C393),),
                          child: Icon(Icons.calendar_today, color: Colors.white,),
                        ),
                        SizedBox(height: 5,),
                        Text('Wait Food is \nCooking',
                        textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                              ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        width: 30,
                        height: 4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black54,),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white, border: Border.all(color: Color(0xff00C393))),
                          child: Icon(Icons.local_shipping, color: Colors.black54,),
                        ),
                        SizedBox(height: 5,),
                        Text('Order is on \nthe way',
                        textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                              ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        width: 30,
                        height: 4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black54,),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white, border: Border.all(color: Color(0xff00C393))),
                          child: Icon(Icons.home, color: Colors.black,),
                        ),
                        SizedBox(height: 5,),
                        Text('Order \nDelivered',
                        textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                              ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('We’ll let you know when it’s out of delivery.',
                                    style: GoogleFonts.lato(
                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                            ),
                              ),
                ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:30.0, horizontal: 18),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/Image.png'),
                              radius: 30,
                            ),
                            SizedBox(width: 10,),
                          Text('Jone’s Dishes',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                                ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chat with seller',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.black54, letterSpacing: .5, fontSize: 20,),
                              ),
                                ),
                            SizedBox(width: 10,),
                          Image(
                             width: 45,
                            height: 42,
                            image: AssetImage('assets/images/chat.png'),
                            ),
                           SizedBox(width: 10,),
                          Container(
                            width: 45,
                            height: 42,
                            color: Color(0xff00C393),
                            child: Image(image: AssetImage('assets/images/call.png'),)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Check this out while you wait',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                  ),
                ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Stack(
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width,
                          image: AssetImage('assets/images/food2.png'),
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 18),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                              child: Image(image: AssetImage('assets/images/love.png'),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 30),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                child: Center(
                                  child: Text('Chicken Rice',
                                                  style: GoogleFonts.lato(
                                        textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
                                          ),
                                            ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   ],
                  
        ),
      ),
    )));
  }
}