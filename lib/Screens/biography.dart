import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/biography_describtion.dart';
import 'package:air_chef/widget/dropdown/category.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Biography extends StatefulWidget {
  const Biography({Key? key}) : super(key: key);

  @override
  State<Biography> createState() => _BiographyState();
}

class _BiographyState extends State<Biography> {

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
              child: Text('Biography',
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
            }, icon: Icon(Icons.home),  hoverColor: Colors.black,),
            IconButton(onPressed:(){}, icon: Icon(Icons.shop)),
            IconButton(onPressed:(){}, icon: Icon(Icons.favorite)),
            IconButton(onPressed:(){}, icon: Icon(Icons.person), color: Color(0xff00C393),),
          ],
        ),
      ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
          SizedBox(height: 20,),
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
          SizedBox(height: 5,),
          Container(
                          alignment: AlignmentDirectional.topEnd,
                                    child: Text('Upto 1000  Characters',
                              style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.grey, letterSpacing: .5, fontSize: 12,),
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
                        child: const Text("Save",
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