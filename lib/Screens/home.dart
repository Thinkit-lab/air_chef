// ignore_for_file: prefer_const_declarations, file_names

import 'package:air_chef/Screens/login.dart';
import 'package:air_chef/Screens/my_cart.dart';
import 'package:air_chef/Screens/my_favourites.dart';
import 'package:air_chef/Screens/order.dart';
import 'package:air_chef/Screens/order_history.dart';
import 'package:air_chef/Screens/pre_order.dart';
import 'package:air_chef/Screens/profile.dart';
import 'package:air_chef/Screens/search.dart';
import 'package:air_chef/collections/popular.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/menu.dart';
import 'package:air_chef/widget/navigation_drawer.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
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
  Menu menu = Menu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed:(){
              Get.off(()=>SearchList());
            }, icon: Icon(Icons.home), color: Color(0xff00C393), hoverColor: Colors.black,),
            IconButton(onPressed:(){
               Get.off(()=>MyCart());
            }, icon: Icon(Icons.shop)),
            IconButton(onPressed:(){
               Get.off(()=>MyFavourites());
            }, icon: Icon(Icons.favorite)),
            IconButton(onPressed:(){
               Get.off(()=>ProfilePage());
            }, icon: Icon(Icons.person)),
          ],
        ),
      ),
      appBar: AppBar(
        
        elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){
                NavigationDrawerWidget();
              },
              child: const Image(image: AssetImage('assets/images/menu.png'))),
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
                    child: Text('Hi Mikie! Good Morning',
                    textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                textStyle: const TextStyle(letterSpacing: .5, fontSize: 12,),
                                  ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Find Your Best Meals',
                                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                       ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
                 child: FlatButton(
                          color: const Color(0xff00C393),
                          child: const Text("Pre-Order",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),),
                          onPressed: () {
                            Get.off(()=>PreOrder());
                          },
                        ),
               ),
               Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                 child: FlatButton(
                          color: const Color(0xff00C393),
                          child: const Text("Order For Now",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),),
                          onPressed: () {
                             Get.off(()=>OrderPage());
                          },
                        ),
               ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SimpleSearchWidget(hintText: 'Search type',),
                  SizedBox(height: 5,),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Most popular',
                       style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                        ),
                  ),
                  SizedBox(height: 10,),
                  _buildCollectionsRow(),
                  SizedBox(height: 20,),
                  Container(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Text('Recommended',
                         style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                          ),
                  ),
                  SizedBox(height: 10,),
                  _buildCollectionsColumn()
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
      height: 220.0,
      // padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 5.0,),
              width: 150.0,
              height: 200.0,
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8.0),
                              child: Image.asset( popularCollectionAsset[index], fit: BoxFit.fill,
                              width: 200,),
                            ),)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Text(collections[index]['title'],
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16,),
                              ),
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(collections[index]['image']),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(collections[index]['tag'],
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(color:    Color(0xff00C393), letterSpacing: .1, fontSize: 12,),
                                ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:11.0, horizontal: 15),
                  child: Container(
                    alignment: AlignmentDirectional.topEnd,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/love.png'),),
                  ),
                ),
              ],
              )
              );
        },
      ),
    );
  }

  Container _buildCollectionsColumn() {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        // scrollDirection: Axis.vertical,
        itemCount: collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.only(bottom: 10.0,),
              // width: 150.0,
              height: 160.0,
              child: Stack(children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Image.asset( popularCollectionAsset[index], fit: BoxFit.fill,
                            width: 120,),
                          ),),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:10.0),
                                child: Text(collections[index]['title'],
                                // textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16,),
                                        ),
                                    ),
                              ),
                               SizedBox(height: 10,),
                              Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(collections[index]['image']),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text(collections[index]['tag'],
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(color:    Color(0xff00C393), letterSpacing: .1, fontSize: 12,),
                                      ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                                padding: const EdgeInsets.symmetric(horizontal:10.0),
                                child: Text(collections[index]['describtion'],
                                style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 9,),
                                        ),
                                    ),
                              ),
                               SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(right:18.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                                  child: Text(collections[index]['price'],
                                  style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 18,),
                                          ),
                                      ),
                                ),
                                Container(
                                  width: 60,
                                  height: 25,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xff00C393),),
                 child: FlatButton(
                          // color: const Color(0xff00C393),
                          child: const Text("Add",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),),
                          onPressed: () {
                            
                          },
                        ),
               ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical:11.0, horizontal: 15),
                //   child: Container(
                //     alignment: AlignmentDirectional.topCenter,
                //     child: const CircleAvatar(
                //       radius: 10,
                //       backgroundColor: Colors.white,
                //       backgroundImage: AssetImage('assets/images/love.png'),),
                //   ),
                // ),
              ],
              )
              );
        },
      ),
    );
  }


}