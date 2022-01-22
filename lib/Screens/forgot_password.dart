import 'package:air_chef/Screens/login.dart';
import 'package:air_chef/Screens/verify_number.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  Padding(
                    padding: const EdgeInsets.only(right:70.0),
                    child: Container(
                      alignment: AlignmentDirectional.topEnd,
                      child: const Text('* *',
                      style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff00C393),
                      ),),
                    ),
                  ),
                  Stack(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:70.0),
                        child: Container(
                          alignment: AlignmentDirectional.centerStart,
                          child:  const Text('* *',
                          style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff00C393),
                          ),),
                        ),
                      ),
                      const Center(child: Image(image: AssetImage('assets/images/Lock.png'))),
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
                child: Text('Forgot password?',
                style: GoogleFonts.roboto(
    textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                          color: Color(0xff2B2C43),),),),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text('Enter your phone number for recevory your account.',
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  onChanged: (String value){},
                  cursorColor: const Color(0xffF37032),
                  decoration: const InputDecoration(
                      hintText: "Type your phone number",
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){

              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text('Try another ways',
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
                        child: const Text("Reset password",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          Get.off(()=>const VerifyNumber());
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
