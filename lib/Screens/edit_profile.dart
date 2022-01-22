import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/search.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed:(){
              Get.off(()=>SearchList());
            }, icon: Icon(Icons.home), color: Color(0xff00C393), hoverColor: Colors.black,),
            IconButton(onPressed:(){}, icon: Icon(Icons.shop)),
            IconButton(onPressed:(){}, icon: Icon(Icons.favorite)),
            IconButton(onPressed:(){}, icon: Icon(Icons.person)),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 310,
              decoration: const BoxDecoration(borderRadius: 
              BorderRadius.only(bottomLeft:Radius.circular(120)), color: Colors.red,
              image: DecorationImage(image: AssetImage('assets/images/foodbg.png'))),
              child: Stack(
                children:  [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 4.0), shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Image.png'),radius: 50,),
                    ),
                  ),
                  Center(
                    child: Padding(
               padding: const EdgeInsets.only(top:170.0),
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                                        child: Text('Change Profile Picture',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
                                 ),
                                   ),
                                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Image(image: AssetImage('assets/images/back.png'), color: Colors.white,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:265.0),
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.only( topRight:Radius.circular(60)),color: Colors.white),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(top:40.0, left: 18, right: 18),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        alignment: AlignmentDirectional.topStart,
                                  child: Text('Full Name',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                           ),
                             ),
                                ),
                                SizedBox(height: 10,),
                               Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Color(0xff00C393),), borderRadius:
              BorderRadius.circular(8), color: Colors.white),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  onChanged: (String value){},
                  cursorColor: const Color(0xffF37032),
                  decoration: const InputDecoration(
                      hintText: "Miekiejones",
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
                        alignment: AlignmentDirectional.topStart,
                                  child: Text('Email Address',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                           ),
                             ),
                                ),
                                SizedBox(height: 10,),
                               Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Color(0xff00C393),), borderRadius:
              BorderRadius.circular(8), color: Colors.white),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  onChanged: (String value){},
                  cursorColor: const Color(0xffF37032),
                  decoration: const InputDecoration(
                      hintText: "Miekiejones@gmail.com",
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text('Date of Birth',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                           ),
                             ),
              Text('Phone Number',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                           ),
                             ),
            ]
          ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 width: 150,
                 height: 50,
                 decoration: BoxDecoration( borderRadius: BorderRadius.circular(8), 
                 border: Border.all(color: Color(0xff00C393),)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Icon(Icons.calendar_today, color:  Color(0xff00C393),),
                      Text('02-02-1996',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color: Colors.black54, letterSpacing: .5, fontSize: 16,),
                           ),
                             ),
                   ],
                 ),
               ),
               Container(
                 width: 150,
                 height: 50,
                 decoration: BoxDecoration( borderRadius: BorderRadius.circular(8), 
                 border: Border.all(color: Color(0xff00C393),)),
                 child: Center(
                   child: Text('+1278786765',
                         style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black54, letterSpacing: .5, fontSize: 16,),
                        ),
                ),
                 ),),
             ],
           ),
           SizedBox(height: 40,),
           Padding(
        padding: const EdgeInsets.only(bottom:10.0, right: 18, left: 18),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 60,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Save Changes",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          
                        },
                      ),
             ),
      ),
      SizedBox(height: 20,),
      Container(
        alignment: AlignmentDirectional.topStart,
        child: Text("Notification",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildNotificationOptionRow("App", true),
          buildNotificationOptionRow("SMS", false),
        ],
      ),
      SizedBox(height: 20,),
                    ],),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}

 Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        SizedBox(width: 20,),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

}