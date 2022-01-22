import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  final List<Map> collections = [
    {"title": "Mino sushi roll ", "image": 'assets/images/ob1.png', "tag": "Mom’s Kitchen", 
    "cancelledprice": "\$ 200", "price": '\$ 320', "count": '1'},
    {"title": "Bread with Egg", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    "cancelledprice": "\$ 210", "price": '\$ 390',  "count": '2'},
    {"title": "Fried Chicken ", "image": 'assets/images/ob1.png', "tag": "Anny  cooking",
    "cancelledprice": "\$ 200", "price": '\$ 320',  "count": '3'},
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
              child: Text('My Cart',
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
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
           padding: const EdgeInsets.only(top:40.0, bottom: 20, right: 18, left:18),
            child: Column(
              children: [
                _buildCollectionsColumn(),
                      SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             children: [
                               Container(
                   alignment: AlignmentDirectional.topStart,
                   child: Text('Total Price',
                                                 style: GoogleFonts.lato(
                                          textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16,),
                                                ),
                                                  ),
                 ),
                 SizedBox(height: 10,),
                  Text('\$88.95',
                                             style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                              ),
                             ],
                           ),
                Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: 200,
               height: 60,
              //  padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                       // color: const Color(0xff00C393),
                       child: const Text("Checkout",
                       style: TextStyle( fontSize: 16, color: Colors.white),),
                       onPressed: () {
                         
                       },
                      ),
             ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

    _buildCollectionsColumn() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          // physics: BouncingScrollPhysics(),
          // scrollDirection: Axis.vertical,
          itemCount: collections.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
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
                margin: EdgeInsets.only(bottom: 40.0,),
                // width: 150.0,
                height: 115.0,
                child: Stack(children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Image.asset( popularCollectionAsset[index], fit: BoxFit.fill,
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
                                    padding: const EdgeInsets.symmetric(horizontal:5.0),
                                    child: Text(collections[index]['title'],
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
                                            ),
                                        ),
                                  ),
                                   SizedBox(height: 5,),
                                  Padding(
                                padding: const EdgeInsets.symmetric(horizontal:5.0),
                                child: Text(collections[index]['tag'],
                                  // textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(color:    Color(0xff00C393), letterSpacing: .1, fontSize: 12,),
                                      ),
                                  ),
                              ),
                                  SizedBox(height: 25,),
                                  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xffF4F4F4)),
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(width: 20,),
                                  Text(collections[index]['count'],
                                  style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 18,),
                                              ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xffF4F4F4)),
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:5.0, vertical: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xffF4F4F4)),
                                    child: Icon(Icons.close),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:10.0),
                                    child: Text(collections[index]['price'],
                                    style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(color: Color(0xff00C393), letterSpacing: .1, fontSize: 18,),
                                                ),
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
                ],
                )
                );
          },
        ),
      ),
    );
  }
}