import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/biography_describtion.dart';
import 'package:air_chef/widget/dropdown/category.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class SetAvailability extends StatefulWidget {
  const SetAvailability({Key? key}) : super(key: key);

  @override
  State<SetAvailability> createState() => _SetAvailabilityState();
}

class _SetAvailabilityState extends State<SetAvailability> {

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
              child: Text('Availability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
           Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Monday',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                             ),
                               ),
                                  ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('From',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('6:00 PM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
               SizedBox(width: 20,),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('To',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('12:00 AM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
             ],
           ),
            SizedBox(height: 20,),
            Container(
                            alignment: AlignmentDirectional.topStart,
                                      child: Text('Tuesday',
                                style: GoogleFonts.lato(
                        textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                              ),
                                ),
                                    ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                    height: 50,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('From',
                                    style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                  ),
                                    ),
                        Text('6:00 PM',
                                    style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                  ),
                                    ),
                      ],),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('To',
                                    style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                  ),
                                    ),
                        Text('12:00 AM',
                                    style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                  ),
                                    ),
                      ],),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Wednesday',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                             ),
                               ),
                                  ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('From',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('6:00 PM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
               SizedBox(width: 20,),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('To',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('12:00 AM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
             ],
           ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Thursday',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                             ),
                               ),
                                  ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('From',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('6:00 PM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
               SizedBox(width: 20,),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('To',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('12:00 AM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
             ],
           ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Friday',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                             ),
                               ),
                                  ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('From',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('6:00 PM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
               SizedBox(width: 20,),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('To',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('12:00 AM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
             ],
           ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Saturday',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                             ),
                               ),
                                  ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('From',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('6:00 PM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
               SizedBox(width: 20,),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('To',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('12:00 AM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
             ],
           ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Sunday',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                             ),
                               ),
                                  ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('From',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('6:00 PM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
               SizedBox(width: 20,),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text('To',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16,),
                                 ),
                                   ),
                      Text('12:00 AM',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                     ],),
                   ),
                 ),
               ),
             ],
           ),

          SizedBox(height: 40,),
          Padding(
        padding: const EdgeInsets.only(bottom:10.0,),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 70,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Save",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          
                        },
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