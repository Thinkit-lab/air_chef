import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/search.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  final List<Map> collections = [
    {"title": "Melted Omelette with Spicy Chilli", "tag": "Mom’s Kitchen", 
    "totalPrice": "\$ 200", "price": '\$ 320', "copies": '2x'},
    {"title": "Melted Omelette with Spicy Chilli", "tag": "Jone’s Dishes",
    "totalPrice": "\$ 210", "price": '\$ 390',  "copies": '2x'},
    {"title": "Random Vegetables for Breakfast",  "tag": "Anny  cooking",
    "totalPrice": "\$ 200", "price": '\$ 320',  "copies": '2x'},
    {"title": "Nepal", "tag": "Jone’s Dishes",
    "totalPrice": "\$ 150", "price": '\$ 420',  "copies": '2x'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.black),
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
              IconButton(onPressed:(){}, icon: Icon(Icons.add, size: 30,)),
              IconButton(onPressed:(){}, icon: Icon(Icons.notifications_on, color: Color(0xff00C393),)),
              IconButton(onPressed:(){}, icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
   appBar: AppBar(
        elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/back.png'))),
            title: Padding(
              padding: const EdgeInsets.only(right:32.0),
              child: Center(
                child: Text('Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0),
                        child: SimpleSearchWidget(hintText: 'Search Order ID or Product',),
                      ),
                      ],
                    ),
                  ),
                  Padding(
                         padding: const EdgeInsets.only(left:18.0, right: 18.0, top: 120),
                         child: Container(
                           decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                           height: 50,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal:8.0),
                                 child: Center(
                                   child: Container(
                                     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                     height: 40,
                                     width: 120,
                                     child: Center(
                                       child: Text('On Delivery',
                                                      style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16,),
                                              ),
                                                ),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal:8.0,),
                                 child: Center(
                                   child: Container(
                                     decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                                     height: 40,
                                     width: 120,
                                     child: Center(
                                       child: Text('Delivered',
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
                  Padding(
                    padding: const EdgeInsets.only(top:200.0, bottom: 40, right: 15, left:15),
                    child: _buildCollectionsColumn(),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 40,),
                Padding(
            padding: const EdgeInsets.only(bottom:20.0, left:20, right:20,),
            child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
                   width: MediaQuery.of(context).size.width,
                   height: 70,
                   padding: const EdgeInsets.symmetric(horizontal: 18),
                   child: FlatButton(
                            color: const Color(0xff00C393),
                            child: const Text("Mark as done",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                            onPressed: () {
                              
                            },
                          ),
                 ),
      ),
          ],
        ),
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
              height: 140.0,
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
                                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16, ),
                                        ),
                                    ),
                              ),
                               SizedBox(height: 10,),
                              
                               SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(right:18.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                                  child: Text(collections[index]['price'],
                                  style: GoogleFonts.raleway(
                                                textStyle: const TextStyle(color: Colors.black, letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
                                              ),
                                          ),
                                ),
                                 Text(collections[index]['copies'],
                                style: GoogleFonts.raleway(
                                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                    ),
                                      ],
                                    ),
                                Text(collections[index]['totalPrice'],
                                    style: GoogleFonts.raleway(
                                              textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
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
              ],
              )
              );
        },
      ),
    );
  }
}