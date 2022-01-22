import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';


class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
              child: Text('Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 70,
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
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/Image.png'),),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Container(
                              // alignment: AlignmentDirectional.topStart,
                              child: Text('Miekie jones',
                                                style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                          ),
                            ),
                                        SizedBox(height: 5,),
                            Text('Miekiejones@gmail.com',
                                              style: GoogleFonts.lato(
                                    textStyle: const TextStyle(color: Colors.black38, letterSpacing: .5, fontSize: 14,),
                                      ),
                                        ),
                          ],),
                        ),
                      Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Color(0xff00C393),),
                 width: 80,
                 height: 40,
                //  padding: const EdgeInsets.symmetric(horizontal: 18),
                 child: FlatButton(
                           // color: const Color(0xff00C393),
                           child: const Text("Edit",
                           style: TextStyle( fontSize: 16, color: Colors.white),),
                           onPressed: () {
                             
                           },
                          ),
             ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 150,
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top:18.0, left: 18,),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Text('Profile',
                                          style: GoogleFonts.lato(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                    ),
                      ),
                    ),
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                  child: Container(
                    color:Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person, color: Color(0xff00C393),),
                               SizedBox(width: 10,),
                               Text('Invite Friends to this app',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                ),
                                  ),
                            ],
                          ),
                          Icon(Icons.arrow_right)  
                        ],
                      ),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications, color: Color(0xff00C393),),
                               SizedBox(width: 10,),
                               Text('Notifcations',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                ),
                                  ),
                            ],
                          ),
                          Icon(Icons.arrow_right)  
                        ],
                      ),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.language, color: Color(0xff00C393),),
                               SizedBox(width: 10,),
                               Text('Language',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                ),
                                  ),
                            ],
                          ),
                          Icon(Icons.arrow_right)  
                        ],
                      ),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.wb_sunny, 
                              color: Color(0xff00C393),),
                               SizedBox(width: 10,),
                               Text('Theme',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                ),
                                  ),
                            ],
                          ),
                          Icon(Icons.arrow_right)  
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,)
                  ],),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 150,
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top:18.0, left: 18,),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Text('Security',
                                          style: GoogleFonts.lato(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                    ),
                      ),
                    ),
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                  child: Container(
                    color:Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.lock, color: Color(0xff00C393),),
                               SizedBox(width: 10,),
                               Text('Password',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                ),
                                  ),
                            ],
                          ),
                          Icon(Icons.arrow_right)  
                        ],
                      ),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 5),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.lock, 
                              color: Color(0xff00C393),),
                               SizedBox(width: 10,),
                               Text(' Change Password',
                                        style: GoogleFonts.lato(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                ),
                                  ),
                            ],
                          ),
                          Icon(Icons.arrow_right)  
                        ],
                      ),
                    ), 
                  ),
                ),
                SizedBox(height: 10,),
                  ],),
                ),
              ),
              SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Log Out',
                                          style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: Color(0xff00C393),), letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold)),
                                  ),
                        Icon(Icons.arrow_forward, color: Color(0xff00C393),)
                    ],
                  ),
                ),
                 SizedBox(height: 20,),
            ]
                ),
              ),
        );
  }
}