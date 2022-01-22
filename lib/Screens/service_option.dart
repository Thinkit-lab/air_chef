// ignore_for_file: prefer_const_declarations, file_names

import 'package:air_chef/Screens/login.dart';
import 'package:air_chef/widget/checkbox.dart';
import 'package:air_chef/widget/checkboxes/air_chef.dart';
import 'package:air_chef/widget/checkboxes/air_kitchen.dart';
import 'package:air_chef/widget/checkboxes/sell_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceOption extends StatefulWidget {

  const ServiceOption({Key? key}) : super(key: key);
  @override
  _ServiceOptionState createState() => _ServiceOptionState();
}

class _ServiceOptionState extends State<ServiceOption> {
  FindServiceCheckBox findServiceCheckBox = FindServiceCheckBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:40.0),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
               width: MediaQuery.of(context).size.width,
               height: 60,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Go",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          showDialog();
                        },
                      ),
             ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Image(image: AssetImage("assets/images/image 3.png")),
            ),
            const SizedBox(
              height: 20,
            ),
             Text('Air Chef',
            style: GoogleFonts.meriendaOne(
    textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 40, fontWeight: FontWeight.bold),
  ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:18.0),
              child: FindServiceCheckBox(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:18.0),
              child: SellServiceCheckBox(),
            ),
            const SizedBox(
              height: 40,
            ),
            
          ],
        ),
      ),
    );
  }

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
              alignment: Alignment.center,
              child: Container(
                height: 250,
                child: Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                  AirChefCheckBox(),
                  AirKitchenCheckBox(),
                ],),
                margin: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
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