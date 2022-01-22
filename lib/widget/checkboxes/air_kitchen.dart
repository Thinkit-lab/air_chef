import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AirKitchenCheckBox extends StatefulWidget {
  const AirKitchenCheckBox({Key? key}) : super(key: key);


  @override
  _AirKitchenCheckBoxState createState() => _AirKitchenCheckBoxState();
}

class _AirKitchenCheckBoxState extends State<AirKitchenCheckBox> {
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
                  title: Text('Air Kitchen',
                  style: GoogleFonts.roboto(
    textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18,),
  ),),
                  value: isCheck,
                  onChanged: (val) {
                    setState(() {
                      isCheck = val!;
                    });
                  },
                ),
              )
          ),
      ],
    );
  }
}