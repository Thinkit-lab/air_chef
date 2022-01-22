import 'package:air_chef/Screens/forgot_password.dart';
import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/service_option.dart';
import 'package:air_chef/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00C393),
      body: ListView(
        children: <Widget>[
          ClipPath(
            child: Container(
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Center(child: Image(image: AssetImage('assets/images/image 1.png'))),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              width: double.infinity,
              height: 237,
              decoration: const BoxDecoration(
                      )),
            ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text('Welcome Back',
            style: GoogleFonts.mulish(
    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                      color: Colors.white),),),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text('Sign In to continue',
            style: GoogleFonts.mulish(
    textStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white),),),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Material(
              elevation: 2.0,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: TextField(
                onChanged: (String value){},
                cursorColor: const Color(0xffF37032),
                decoration: const InputDecoration(
                    hintText: "UserName",
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
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
                    hintText: "Password",
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: GestureDetector(
              onTap: (){
                Get.off(()=>const ForgotPassword());
              },
              child: Container(
                alignment: AlignmentDirectional.bottomEnd,
                child:  Text('Forgot Password?',
                style: GoogleFonts.mulish(
                textStyle: const TextStyle(fontSize: 16.0,
                          color: Colors.white),),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                height: 50,
                child: FlatButton(
                      color: const Color(0xffF37032),
                      child: const Text("Login",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                      onPressed: () {
                        Get.off(()=>const ServiceOption());
                      },
                    ),
              )),
              const SizedBox(height: 10,),
              Center(
                child: Text('Or',
                style: GoogleFonts.mulish(
    textStyle: const TextStyle(fontSize: 16.0,
                          color: Colors.white),),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text('Continue with',
                    style: GoogleFonts.mulish(
    textStyle: const TextStyle(fontSize: 16.0,
                          color: Colors.white),),
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        width: 80,
                        height:2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
         const SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:18.0),
           child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              child: RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)),
                                color: Colors.white,
                                icon: const Icon(
                                  FontAwesomeIcons.google,
                                  // color: Colors.white,
                                ),
                                label: const Text(
                                  "Google",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                         const SizedBox(width: 20.0),
                          Expanded(
                            child: Container(
                              height: 50,
                              child: RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)),
                                color: Colors.white,
                                icon: const Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.indigo,
                                ),
                                label: const Text(
                                  "Facebook",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
         ),
         const SizedBox(
           height: 20,
         ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an Account ? ", 
                style: GoogleFonts.mulish(
    textStyle: const TextStyle(fontSize: 14.0,
                          color: Colors.white),),),
                GestureDetector(
                  onTap: (){
                    Get.off(()=>SignupPage());
                  },
                  child: Text("Sign Up ", style: GoogleFonts.mulish(
                    textStyle: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,
                            color: Color(0xffF37032),),),),
                ),
          
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}