import 'package:air_chef/Screens/home2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class SellServiceCheckBox extends StatefulWidget {
  const SellServiceCheckBox({Key? key}) : super(key: key);


  @override
  _SellServiceCheckBoxState createState() => _SellServiceCheckBoxState();
}

class _SellServiceCheckBoxState extends State<SellServiceCheckBox> {
 bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child:
              Expanded(
                child: CheckboxListTile(
                  activeColor: Color(0xff00C393),
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text('Sell a Service ',
                  style: GoogleFonts.roboto(
    textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
  ),),
                  value: isCheck,
                  onChanged: (val) {
                    setState(() {
                      isCheck = val!;
                    });
                     Get.off(()=>HomePage2());
                  },
                ),
              )
          ),
      ],
    );
  }
}