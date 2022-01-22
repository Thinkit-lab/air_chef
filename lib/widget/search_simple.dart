import 'package:air_chef/Screens/search.dart';
import 'package:air_chef/Screens/search_foodmaker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleSearchWidget extends StatelessWidget {
  final String hintText;
  const SimpleSearchWidget({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 5),
      child: TextField(

        decoration: InputDecoration(
          // filled: true,
          prefixIcon: GestureDetector(
            onTap: (){
               Get.off(()=>SearchMakerList());
            },
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          fillColor: Color(0xffF4F4F4),
          hintStyle: new TextStyle(color: Colors.black, fontSize: 14,),
          hintText: hintText,
        ),
      ),
    );
  }
}