import 'package:air_chef/Screens/login.dart';
import 'package:air_chef/Screens/service_option.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text('New',
                  style: GoogleFonts.roboto(
          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                            color: Color(0xff00C393),),),),
                            SizedBox(width: 5,),
                  Text('Password',
                  style: GoogleFonts.roboto(
          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                            color: Color(0xff2B2C43),),),),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text('Reset your password to recovery & login to your account.',
              style: GoogleFonts.roboto(
          textStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff000000)),),
                        ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  onChanged: (String value){},
                  cursorColor: const Color(0xffF37032),
                  decoration: InputDecoration(
                      hintText: "New Password",
                      suffixIcon: GestureDetector(child: Icon(Icons.visibility)),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  onChanged: (String value){},
                  cursorColor: const Color(0xffF37032),
                  decoration: InputDecoration(
                      hintText: "Retype Password",
                      suffixIcon: GestureDetector(child: Icon(Icons.visibility)),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
                        child: const Text("Confirm",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          Get.to(()=>const ServiceOption());
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
