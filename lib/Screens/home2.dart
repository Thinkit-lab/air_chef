// ignore_for_file: prefer_const_declarations, file_names

import 'package:air_chef/Screens/add_food.dart';
import 'package:air_chef/Screens/orders.dart';
import 'package:air_chef/Screens/profile2.dart';
import 'package:air_chef/Screens/profile_bio.dart';
import 'package:air_chef/Screens/search.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage2 extends StatefulWidget {

  const HomePage2({Key? key}) : super(key: key);
  @override
  _HomePage2State createState() => _HomePage2State();
}


class _HomePage2State extends State<HomePage2> {
  final List<Map> collections = [
    {"title": "Mino sushi roll ", "image": 'assets/images/ob1.png', "tag": "Mom’s Kitchen", 
    "describtion": "Viverra eget eu sociis amet purus.", "price": '\$ 320'},
    {"title": "Bread with Egg", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    "describtion": "Viverra eget eu sociis amet purus.", "price": '\$ 390'},
    {"title": "Fried Chicken ", "image": 'assets/images/ob1.png', "tag": "Anny  cooking",
    "describtion": "Viverra eget eu sociis amet purus.", "price": '\$ 320'},
    {"title": "Nepal", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    "describtion": "Viverra eget eu sociis amet purus.", "price": '\$ 420'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Color(0xff00C393)),
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
              }, icon: Icon(Icons.notifications_on)),
              IconButton(onPressed:(){
                Get.off(()=>ProfileBioPage());
              }, icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/menu2.png'))),
            actions:  <Widget>[
              GestureDetector(
                onTap: (){},
                child: const Image(image:  AssetImage('assets/images/Image.png'))),
            ],
          ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(
            children:[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Hi James! Good Morning',
                    textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                textStyle: const TextStyle(letterSpacing: .5, fontSize: 16,),
                                  ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 250,
                      // alignment: AlignmentDirectional.topStart,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text('Make More Quality Foods',
                                      style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                               ),
                          ),
                             Image(image: AssetImage('assets/images/cooking.png'),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white,
                  boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],),
                    child: Row(
                      children: [
                        Expanded(
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: TextField(
                              onChanged: (String value){},
                              cursorColor: const Color(0xffF37032),
                              decoration: const InputDecoration(
                                  hintText: "Search your food items",
                                  border: InputBorder.none,
                                  contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                            ),
                          ),
                        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black),
                child: Icon(Icons.search, color: Colors.white,)),
            ),
          )
                      ],
                    ),
                  ),
                   SizedBox(height: 40,),
                   Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Your Uploaded Food Items',
                    textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                textStyle: const TextStyle(letterSpacing: .5, fontSize: 18, fontWeight: 
                FontWeight.bold, decoration: TextDecoration.underline),
                                  ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text('All',
                      textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(letterSpacing: .5, fontSize: 16, fontWeight: 
                                  FontWeight.bold,),
                                    ),
                      ),
                        ),
                        SizedBox(width: 40,),
                         Container(
                          child: Text('Breakfast',
                      textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(letterSpacing: .5, fontSize: 16,),
                                    ),
                      ),
                        ),
                        SizedBox(width: 40,),
                        Container(
                          child: Text('Lunch',
                      textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(letterSpacing: .5, fontSize: 16,),
                                    ),
                      ),
                        ),
                        SizedBox(width: 40,),
                        Container(
                          child: Text('Dinner',
                      textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(letterSpacing: .5, fontSize: 16,),
                                    ),
                      ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  _buildCollectionsRow(),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            ],
          ),
        ),
      )
    );
  }

  Container _buildCollectionsRow() {
    return Container(
      color: Colors.white,
      height: 280.0,
      // padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white,
                  boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
              width: 160.0,
              height: 240.0,
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:18.0),
                      child: Center(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage( popularCollectionAsset[index]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5),
                      child: Center(
                        child: Text(collections[index]['title'],
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 5),
                      child: Center(
                        child: Text(collections[index]['tag'],
                          // textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:    Colors.black, letterSpacing: .1, fontSize: 12,),
                              ),
                          ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 5),
                      child: Center(
                        child: Text(collections[index]['price'],
                          // textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:    Colors.black, letterSpacing: .1, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                          ),
                      ),
                    )
                  ],
                ),
              ],
              )
              );
        },
      ),
    );
  }
}