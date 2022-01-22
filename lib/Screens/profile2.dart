import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/biography_describtion.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile2Page extends StatefulWidget {
  const Profile2Page({Key? key}) : super(key: key);

  @override
  State<Profile2Page> createState() => _Profile2PageState();
}

class _Profile2PageState extends State<Profile2Page> {

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
                    Icon(Icons.share, color: Colors.black),
                    ]),
              ),
              ],
          ),
        bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed:(){
              Get.off(()=>HomePage());
            }, icon: Icon(Icons.home), color: Color(0xff00C393), hoverColor: Colors.black,),
            IconButton(onPressed:(){}, icon: Icon(Icons.shop)),
            IconButton(onPressed:(){}, icon: Icon(Icons.favorite)),
            IconButton(onPressed:(){}, icon: Icon(Icons.person)),
          ],
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                        child: Container(
                          child: CircleAvatar(backgroundImage: AssetImage('assets/images/Image.png',), radius: 70,),
                        ),
                      ),
                    ),
                    Center(
                      child: Text('Johen Conversion',
                                        style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                  ),
                    ),
                    // SizedBox(height: 10,),
                    Center(
                      child: Text('Master Chef',
                                        style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                  ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('4.8',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                    ),
                                    SizedBox(height: 5,),
                              Text('Rating',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16, ),
                                  ),
                                    ),
                            ],
                          ),
                          Container(
                            height: 60,
                            width: 2,
                            color: Color(0xff00C393),
                          ),
                          Column(
                            children: [
                              Text('10 yrs',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                    ),
                                    SizedBox(height: 5,),
                              Text('Experience',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16, ),
                                  ),
                                    ),
                            ],
                          ),
                          Container(
                            height: 60,
                            width: 2,
                            color: Color(0xff00C393),
                          ),
                          Column(
                            children: [
                              Text('145',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                    ),
                                    SizedBox(height: 5,),
                              Text('Follower',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16, ),
                                  ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        width: 150,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                 color: Color(0xff00C393),),
                //  padding: const EdgeInsets.symmetric(horizontal: 18),
                 child: FlatButton(
                           // color: const Color(0xff00C393),
                           child: const Text(" Hourly  Booking",
                           style: TextStyle( fontSize: 16, color: Colors.white),),
                           onPressed: () {
                             
                           },
                          ),
             ),
             SizedBox(width: 10,),
             Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Colors.grey[300],),
                 width: 150,
                 height: 50,
                 child: FlatButton(
                           // color: const Color(0xff00C393),
                           child: const Text("Contact",
                           style: TextStyle( fontSize: 16, color: Colors.black),),
                           onPressed: () {
                             
                           },
                          ),
             ),
                  ],
                ),
                    ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Text('Biography',
                                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                    ),
                    ),
                  ),
                   BiographyDescribtion(),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Container(
                       decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                       height: 60,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                             child: Center(
                               child: Container(
                                 decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                 height: 50,
                                 width: 120,
                                 child: Center(
                                   child: Text('Timings',
                                                  style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                            ),
                                 ),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                             child: Center(
                               child: Container(
                                 decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                                 height: 50,
                                 width: 120,
                                 child: Center(
                                   child: Text('Items',
                                                  style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(color:  Colors.grey, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                            ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                  SizedBox(height: 10,),
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
              // SizedBox(height: 10,),
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
}