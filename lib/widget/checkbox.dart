import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FindServiceCheckBox extends StatefulWidget {
  const FindServiceCheckBox({Key? key}) : super(key: key);


  @override
  _FindServiceCheckBoxState createState() => _FindServiceCheckBoxState();
}

class _FindServiceCheckBoxState extends State<FindServiceCheckBox> {
 bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // color: Color(0xff00C393),
          child:
              Expanded(
                child: CheckboxListTile(
                  activeColor: Color(0xff00C393),
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text('Find a Service ',
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