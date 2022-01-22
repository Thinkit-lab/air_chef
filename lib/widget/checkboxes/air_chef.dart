import 'package:air_chef/Screens/air_chef.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class AirChefCheckBox extends StatefulWidget {
  const AirChefCheckBox({Key? key}) : super(key: key);


  @override
  _AirChefCheckBoxState createState() => _AirChefCheckBoxState();
}

class _AirChefCheckBoxState extends State<AirChefCheckBox> {
 bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child:
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    if(isCheck){
                      Get.off(()=> AirChef);
                    }
                  },
                  child: CheckboxListTile(
                    activeColor: Color(0xff00C393),
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text('Air Chef',
                    style: GoogleFonts.roboto(
                    textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
                  ),),
                    value: isCheck,
                    onChanged: (val) {       
                      setState(() {
                        isCheck = val!;
                      });
                      Get.off(()=>AirChef());
                    },
                  ),
                ),
              )
          ),
      ],
    );
  }
}