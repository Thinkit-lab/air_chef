import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {

  final List<Map> collections = [
    {"title": "Mino sushi roll ", "image": 'assets/images/ob1.png', "tag": "Mom’s Kitchen", 
    },
    {"title": "Bread with Egg", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    },
    {"title": "Fried Chicken ", "image": 'assets/images/ob1.png', "tag": "Anny  cooking",
    },
    {"title": "Mino sushi roll ", "image": 'assets/images/ob1.png', "tag": "Mom’s Kitchen", 
    },
    {"title": "Bread with Egg", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    },
  ];

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
              child: Text('Order History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top:15.0, right: 18),
                child: Stack(
                  children: [ 
                    Icon(Icons.shop, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0),
                      child: Container(
                        alignment: AlignmentDirectional.topEnd,
                        child: Icon(Icons.circle, size: 10, color: Color(0xff00C393),)),
                    )
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
        child: Padding(
         padding: const EdgeInsets.only(top:20.0, bottom: 20, right: 18, left:18),
          child: _buildCollectionsColumn(),
        ),
      ),
    );
  }

    SingleChildScrollView _buildCollectionsColumn() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: collections.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12),
                //   boxShadow: const [
                // BoxShadow(
                //   color: Colors.black12,
                //   blurRadius: 2.0,
                //   spreadRadius: 0.0,
                //   offset: Offset(2.0, 2.0), // shadow direction: bottom right
                //   )
                // ],
                ),
                  margin: EdgeInsets.only(bottom: 20.0,),
                  // width: 150.0,
                  height: 130.0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:8.0),
                                child: Image.asset( popularCollectionAsset[index],
                                height: 100,
                                width: 100,),
                              ),),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal:10.0),
                                        child: Text(collections[index]['title'],
                                        // textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
                                                ),
                                            ),
                                      ),
                                      //  SizedBox(height: 5,),
                                      Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                                    child: Text(collections[index]['tag'],
                                      // textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(color:    Colors.black, letterSpacing: .1, fontSize: 12,),
                                          ),
                                      ),
                                  ),
                                       SizedBox(height: 10,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Text('Reorder',
                                          // textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .1, fontSize: 12, fontWeight: FontWeight.bold),
                                              ),
                                          ),
                            ),
                        GestureDetector(
                          onTap: (){},
                          child: Text('Write a Review',
                                          // textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(color: Colors.black, letterSpacing: .1, fontSize: 12, fontWeight: FontWeight.bold),
                                              ),
                                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Text('Remove',
                                          // textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(color: Colors.red, letterSpacing: .1, fontSize: 12, fontWeight: FontWeight.bold),
                                              ),
                                          ),
                        ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  ),
            );
          },
        ),
      ),
    );
  }
}