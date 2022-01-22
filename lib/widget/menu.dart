

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu{
  get context => null;

 

  void showDialog() {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (_, __, ___) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Dialog(
          insetPadding: EdgeInsets.symmetric(vertical: 310),
          child: Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                child: Container(
                  width: 300,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    GestureDetector(
                      onTap:() {
                      },
                      child: Row(
                        children:[
                          Icon(Icons.photo),
                          SizedBox(width: 10,),
                          Text('Change Photo',
                                   style: GoogleFonts.mulish(
                                      textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
              
                      },
                      child: Row(
                        children:[
                          Icon(Icons.person),
                          SizedBox(width: 10,),
                          Text('Remove Photo',
                                   style: GoogleFonts.mulish(
                                      textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],),
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}
}