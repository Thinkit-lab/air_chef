import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/checkboxes/tick.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  final List<Map> collections = [
    {"name": "William Jones ", "card_no": "Card No: 4156 10** **** 1200", 
    },
    {"name": "Mikie", "card_no": "Card No: 0022 3002 5644 8700", 
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
              child: Text('Cards',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
           padding: const EdgeInsets.only(top:20.0, bottom: 0, right: 18, left:18),
            child: Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Add New Card',
                     style: GoogleFonts.lato(
                     textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold,),
                       ),
                         ),
                ),
                SizedBox(height: 40,),
                Container(
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
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
             padding: const EdgeInsets.only(top:0.0, bottom: 40, right: 8, left:8),
              child: Column(
                children: [
                      
                  Column(
                    children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('First Name*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                 Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Last Name*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                                      Expanded(
                                        child: Material(
                                          elevation: 1.0,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          child: TextField(
                                            onChanged: (String value){},
                                            cursorColor: const Color(0xffF37032),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                               EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                      Expanded(
                                        child: Material(
                                          elevation: 1.0,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          child: TextField(
                                            onChanged: (String value){},
                                            cursorColor: const Color(0xffF37032),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                               EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                          ),
                                        ),
                                      ),
                      ],
                    ),
                    Padding(
                                        padding: const EdgeInsets.symmetric(vertical:10.0),
                                        child: Container(
                      height: 1,
                      color: Colors.black12,
                                        ),
                                      ),
                      SizedBox(height: 20,),
                      Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Card Numbar*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                                        SizedBox(height: 10,),
                Material(
                        elevation: 1.0,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: TextField(
                          onChanged: (String value){},
                        cursorColor: const Color(0xffF37032),
                            decoration: const InputDecoration(
                            border: InputBorder.none,
                         contentPadding:
                       EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                ),
                              ),
                  SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('Expiration Date*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                 Container(
                                        alignment: AlignmentDirectional.topStart,
                                        child: Text('CVV*',
                               style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                              ),
                                       ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                                      Expanded(
                                        child: Material(
                                          elevation: 1.0,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          child: TextField(
                                            onChanged: (String value){},
                                            cursorColor: const Color(0xffF37032),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                               EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                      Expanded(
                                        child: Material(
                                          elevation: 1.0,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          child: TextField(
                                            onChanged: (String value){},
                                            cursorColor: const Color(0xffF37032),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                               EdgeInsets.symmetric(horizontal: 15, vertical: 13)),
                                          ),
                                        ),
                                      ),
                      ],
                    ),
                    Padding(
                                        padding: const EdgeInsets.symmetric(vertical:10.0),
                                        child: Container(
                      height: 1,
                      color: Colors.black12,
                                        ),
                                      ),
                SizedBox(height: 40,),
                Padding(
        padding: const EdgeInsets.only(bottom:10.0, right: 18, left: 18),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 50,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Save Card",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          
                        },
                      ),
             ),
      ),
                    ],
                  ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 40,),
               Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Saved Card',
                     style: GoogleFonts.lato(
                     textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold,),
                       ),
                         ),
                ),
                
               
              _buildCollectionsColumn(),
              SizedBox(height: 20,),
                   ],
                  
        ),
      ),
    )));
  }

  _buildCollectionsColumn() {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        // physics: BouncingScrollPhysics(),
        // scrollDirection: Axis.vertical,
        itemCount: collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
                         padding: const EdgeInsets.only(right:18.0, bottom: 18, top: 18),
                         child: Row(
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               width: 40,
                               height: 40,
                  alignment: AlignmentDirectional.topStart,
                  child: RoundCheckBox(  
                     onTap: (selected) {},
                     size: 25,
                     borderColor: Colors.black,
                     checkedWidget: Icon(Icons.circle, color: Colors.black,),
                     border: Border.all(width: 3, color: Colors.black,),
                     ),  
                 ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max ,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Text(collections[index]['name'],
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold,),
                          ),
                            ),
                    ),
                    SizedBox(height: 10,),
              Text(collections[index]['card_no'],
                                  style: GoogleFonts.lato(
                        textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                          ),
                            ),
                   ],
                 ),
                           ],
                         ),
                       );
        },
      ),
    );
  }

}