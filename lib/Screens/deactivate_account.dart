import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';


class DeactivateAccount extends StatelessWidget {
  const DeactivateAccount({Key? key}) : super(key: key);

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
              child: Text('Deactivate Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckBox(  
                             onTap: (selected) {},
                             size: 20,
                             borderColor: Color(0xff00C393),
                             checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                             border: Border.all(width: 3, color: Color(0xff00C393),),
                             ),
                             SizedBox(width: 5,),
                             Text('I Don\'t Want to Use AirChef Anymore?',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 12,),
                              ),
                                ),
                          ],
                        ),
                        Icon(Icons.arrow_drop_down)  
                      ],
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckBox(  
                             onTap: (selected) {},
                             size: 20,
                             borderColor: Color(0xff00C393),
                             checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                             border: Border.all(width: 3, color: Color(0xff00C393),),
                             ),
                             SizedBox(width: 5,),
                             Text('I\'m Using a Different Account?',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 12,),
                              ),
                                ),
                          ],
                        ),
                        Icon(Icons.arrow_drop_down)  
                      ],
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckBox(  
                             onTap: (selected) {},
                             size: 20,
                             borderColor: Color(0xff00C393),
                             checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                             border: Border.all(width: 3, color: Color(0xff00C393),),
                             ),
                             SizedBox(width: 5,),
                             Text('I\'m Worried about My payments fraud?',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 12,),
                              ),
                                ),
                          ],
                        ),
                        Icon(Icons.arrow_drop_down)  
                      ],
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckBox( 
                              isChecked: true, 
                             onTap: (selected) {},
                             size: 20,
                             borderColor: Color(0xff00C393),
                             checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                             border: Border.all(width: 3, color: Color(0xff00C393),),
                             ),
                             SizedBox(width: 5,),
                             Text('The App is not Working Property?',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 12,),
                              ),
                                ),
                          ],
                        ),
                        Icon(Icons.arrow_drop_up)  
                      ],
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                              children: [
                               Icon(Icons.fast_forward),
                                 SizedBox(width: 5,),
                                 Expanded(
                                   child: Container(
                                      width: MediaQuery.of(context).size.width,
                                     child: Text('Use filler text that has edit for length a format to match characteristics of real content.',
                                              style: GoogleFonts.lato(
                                                               textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                      ),
                                        ),
                                   ),
                                 ),
                              ],
                            ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                              children: [
                               Icon(Icons.fast_forward),
                                 SizedBox(width: 5,),
                                 Expanded(
                                   child: Container(
                                      width: MediaQuery.of(context).size.width,
                                     child: Text('Using real content during design can distract designers and design.',
                                              style: GoogleFonts.lato(
                                                               textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                      ),
                                        ),
                                   ),
                                 ),
                              ],
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              RoundCheckBox(  
                               onTap: (selected) {},
                               size: 20,
                               borderColor: Color(0xff00C393),
                               checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                               border: Border.all(width: 3, color: Color(0xff00C393),),
                               ),
                               SizedBox(width: 5,),
                               Expanded(
                                 child: Container(
                                  //  width: MediaQuery.of(context).size.width,
                                   child: Text('You\'re sending me to many email/notification?',
                                            style: GoogleFonts.lato(
                                                             textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 12,),
                                    ),
                                      ),
                                 ),
                               ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_drop_down)  
                      ],
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckBox(  
                             onTap: (selected) {},
                             size: 20,
                             borderColor: Color(0xff00C393),
                             checkedWidget: Icon(Icons.circle, color: Color(0xff00C393),),
                             border: Border.all(width: 3, color: Color(0xff00C393),),
                             ),
                             SizedBox(width: 5,),
                             Text('Other Problem?',
                                      style: GoogleFonts.lato(
                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 12,),
                              ),
                                ),
                          ],
                        ),
                        Icon(Icons.arrow_drop_down)  
                      ],
                    ),
                  ),
                  
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                 color: Colors.white, border: Border.all(color: Colors.black38)),
                 width: 120,
                 height: 50,
                //  padding: const EdgeInsets.symmetric(horizontal: 18),
                 child: FlatButton(
                         // color: const Color(0xff00C393),
                         child: const Text("Cancel",
                         style: TextStyle( fontSize: 16, color: Colors.black38),),
                         onPressed: () {
                           
                         },
                        ),
             ),
             SizedBox(width: 10,),
             Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Color(0xff00C393),),
                 width: 120,
                 height: 50,
                 child: FlatButton(
                         // color: const Color(0xff00C393),
                         child: const Text("Deactivate",
                         style: TextStyle( fontSize: 16, color: Colors.white),),
                         onPressed: () {
                           
                         },
                        ),
             ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}