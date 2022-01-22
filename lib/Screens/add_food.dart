import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/biography_describtion.dart';
import 'package:air_chef/widget/dropdown/category.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {

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
              child: Text('Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Name Title',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                               ),
                                  ),
                                  SizedBox(height: 10,),
                                 Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black,), borderRadius:
                BorderRadius.circular(8), color: Colors.white),
                child: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: TextField(
                    onChanged: (String value){},
                    cursorColor: const Color(0xffF37032),
                    decoration: const InputDecoration(
                        hintText: "Avocado Blend With Topping Egg",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                  ),
                ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Category',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                               ),
                                  ),
          SizedBox(height: 10,),
          Container(
             decoration: BoxDecoration(border: Border.all(color: Colors.black,), borderRadius:
                BorderRadius.circular(8), color: Colors.white),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Category()),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Description',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                               ),
                                  ),
                                  SizedBox(height: 10,),
                                 Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              height: 220,
                decoration: BoxDecoration(border: Border.all(color: Colors.black,), borderRadius:
                BorderRadius.circular(8), color: Colors.white),
                child: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: TextField(
                    maxLines: 10,
                    onChanged: (String value){},
                    cursorColor: const Color(0xff00C393),
                    decoration: const InputDecoration(
                        hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit." 
                        "Netus arcu donec est pretium arcu. Placerat eros quisque faucibus in." 
                        "Aliquet in mi eu facilisis. Lectus euismod lacinia augue in risus sit" 
                        "pellentesque faucibus sed. Iaculis euismod sed ornare habitant curabitur" 
                        "imperdiet arcu rutrum id. Justo arcu in felis cras quisque ante velit. "
                        "Faucibus fames ridiculus amet, dui sed. ",
                        border: InputBorder.none,
                        isCollapsed: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 13)),
                  ),
                ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Per Quantity Price',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                               ),
                                  ),
                                  SizedBox(height: 10,),
                                 Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black,), borderRadius:
                BorderRadius.circular(8), color: Colors.white),
                child: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: TextField(
                    onChanged: (String value){},
                    cursorColor: const Color(0xffF37032),
                    decoration: const InputDecoration(
                        hintText: "\$10.08",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                  ),
                ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
                          alignment: AlignmentDirectional.topStart,
                                    child: Text('Pictures (Max 4 Pics)',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                               ),
                                  ),
                                  SizedBox(height: 10,),
                                 Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.black,), borderRadius:
                BorderRadius.circular(8), color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Container(
                        width: 30,
                        height: 30,
                         decoration: BoxDecoration(border: Border.all(color: Colors.black,), borderRadius:
                BorderRadius.circular(8), color: Colors.white),
                        child: Icon(
                          Icons.file_upload),
                      ),
                    ),
                  ],
                ),
            ),
          ),
          SizedBox(height: 100,),
          Padding(
        padding: const EdgeInsets.only(bottom:10.0,),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 70,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Sell Now",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          
                        },
                      ),
             ),
      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}