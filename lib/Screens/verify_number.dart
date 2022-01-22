import 'package:air_chef/Screens/login.dart';
import 'package:air_chef/Screens/new_password.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

final inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey.shade400),
);

final inputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
  border: inputBorder,
  focusedBorder: inputBorder,
  enabledBorder: inputBorder,
);

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children:  <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: const [
                      Center(child: Image(image: AssetImage('assets/images/email.png'))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              width: double.infinity,
              height: 262,
              decoration: const BoxDecoration(
                      )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text('Verify your Number',
                style: GoogleFonts.roboto(
    textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                          color: Color(0xff2B2C43),),),),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Center(
                child: Text('Please check your phone number to take 4 digit \ncode for continue.',
                style: GoogleFonts.roboto(
    textStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff000000)),),
                          textAlign: TextAlign.center,),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OTPFields(),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){

              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text('Resend code',
                  style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Color(0xff2B2C43),),),),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  height: 50,
                  child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Send",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          Get.off(()=>const NewPassword());
                        },
                      ),
                )),
                const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class OTPFields extends StatefulWidget {
  const OTPFields({
    Key? key,
  }) : super(key: key);

  @override
  _OTPFieldsState createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  FocusNode? pin2FN;
  FocusNode? pin3FN;
  FocusNode? pin4FN;
  final pinStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  void initState() {
    super.initState();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FN?.dispose();
    pin3FN?.dispose();
    pin4FN?.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0),
      child: Form(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      autofocus: true,
                      style: pinStyle,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: inputDecoration,
                      onChanged: (value) {
                        nextField(value, pin2FN);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      focusNode: pin2FN,
                      style: pinStyle,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: inputDecoration,
                      onChanged: (value) => nextField(value, pin3FN),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      focusNode: pin3FN,
                      style: pinStyle,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: inputDecoration,
                      onChanged: (value) => nextField(value, pin4FN),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      focusNode: pin4FN,
                      style: pinStyle,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: inputDecoration,
                      onChanged: (value) {
                        if (value.length == 1) {
                          pin4FN!.unfocus();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
