import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/order.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchMakerList extends StatefulWidget {
  const SearchMakerList({Key? key}) : super(key: key);

  @override
  _SearchMakerListState createState() => _SearchMakerListState();
}

class _SearchMakerListState extends State<SearchMakerList> {

  final List<Map> collections = [
    {"title": "Mino sushi roll ", "image": 'assets/images/ob1.png', "tag": "Mom’s Kitchen", 
    "cancelledprice": "\$ 200", "price": '\$ 320', "rating": '5.0'},
    {"title": "Bread with Egg", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    "cancelledprice": "\$ 210", "price": '\$ 390',  "rating": '4.0'},
    {"title": "Fried Chicken ", "image": 'assets/images/ob1.png', "tag": "Anny  cooking",
    "cancelledprice": "\$ 200", "price": '\$ 320',  "rating": '3.5'},
    {"title": "Nepal", "image": 'assets/images/ob1.png', "tag": "Jone’s Dishes",
    "cancelledprice": "\$ 150", "price": '\$ 420',  "rating": '3.0'},
  ];

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
              Get.off(()=>HomePage());
            }, icon: Icon(Icons.home), color: Color(0xff00C393), hoverColor: Colors.black,),
            IconButton(onPressed:(){}, icon: Icon(Icons.shop)),
            IconButton(onPressed:(){}, icon: Icon(Icons.favorite)),
            IconButton(onPressed:(){}, icon: Icon(Icons.person)),
          ],
        ),
      ),
      appBar: AppBar(
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/back.png'))),
            title: Padding(
              padding: const EdgeInsets.only(right:32.0),
              child: Center(
                child: Text('Search',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
      body: SingleChildScrollView(
        child: Container(
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
                    child: SearchWidget(),
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 140),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('12 That Food Makers Found',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.menu_rounded, color: Color(0xff00C393),),
                      SizedBox(width: 5,),
                      Icon(Icons.grid_view, color: Colors.black45,),
                    ],
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:170.0, bottom: 130, right: 15, left:15),
                child: _buildCollectionsColumn(),
              )
            ],
          ),
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
              height: 160.0,
              child: Stack(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                       Get.off(()=>OrderPage());
                    },
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
                                            textStyle: const TextStyle(color:  Colors.black, letterSpacing: .1, fontSize: 16, fontWeight: FontWeight.bold),
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
                                                  textStyle: const TextStyle(color: const Color(0xff00C393), letterSpacing: .1, fontSize: 16,),
                                                ),
                                            ),
                                  ),
                                   Text(collections[index]['cancelledprice'],
                                  style: GoogleFonts.raleway(
                                            textStyle: const TextStyle(color:  Colors.black45, letterSpacing: .1, fontSize: 14,),
                                          ),
                                      ),
                                        ],
                                      ),
                                  Container(
                                    width: 70,
                                    height: 30,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffFF7F23),),
                                   child: FlatButton(
                            // color: const Color(0xff00C393),
                            child: Row(
                              children: [
                                const Text("*",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
                                SizedBox(width: 5,),
                                Text(collections[index]['rating'],
                                    style: GoogleFonts.raleway(
                                              textStyle: const TextStyle(color:  Colors.white, letterSpacing: .1, fontSize: 14,),
                                            ),
                                        ),
                              ],
                            ),
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