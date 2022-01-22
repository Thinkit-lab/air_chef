import 'package:air_chef/Screens/check_out.dart';
import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:10.0, right: 18, left: 18),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 60,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Order For Now",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                           Get.off(()=>CheckOut());
                        },
                      ),
             ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              child: Image(image: AssetImage('assets/images/productImages.png'),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Image(image: AssetImage('assets/images/back.png'), color: Colors.white,)),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.white,),
                      SizedBox(width: 10,),
                      Icon(Icons.more_vert, color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:300.0),
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(50), topRight:Radius.circular(50)),color: Colors.white),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(top:70.0, left: 18, right: 18),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        alignment: AlignmentDirectional.topStart,
                                  child: Text('Description',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                           ),
                             ),
                                ),
                                SizedBox(height: 10,),
                              Container(
                        alignment: AlignmentDirectional.topStart,
                                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore , sed do eiusmod tempor incididunt ut labore.',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                           ),
                             ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                        alignment: AlignmentDirectional.topStart,
                                  child: Text('Reviews',
                            style: GoogleFonts.lato(
                     textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                           ),
                             ),
                                ),
                                SizedBox(height: 10,),
                              Stack(
                                children:[ 
                                  Row(
                                  children:[
                                  Container(
                          width: 40,
                         height: 40,
                             child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Image.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                  Expanded(
                    child: Column(
                      children: [
                        Container(
                            alignment: AlignmentDirectional.topStart,
                                      child: Text('Jony Lee',
                                style: GoogleFonts.lato(
                         textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                               ),
                                 ),
                                    ),
                      SizedBox(height: 10,),
                      Container(
                            alignment: AlignmentDirectional.topStart,
                                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididu',
                                style: GoogleFonts.lato(
                         textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                               ),
                                 ),
                                    ),
                      ],
                    ),
                                  ),
                                  Icon(Icons.arrow_forward)
                                ],),
                                Padding(
                                  padding: const EdgeInsets.only(right:32.0),
                                  child: Container(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image(image: AssetImage('assets/images/rating.png'),)),
                                ),
                                ]
                              ),
                              SizedBox(height: 40,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:18.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                    Container(
                              alignment: AlignmentDirectional.topStart,
                                        child: Text('Quantity',
                                  style: GoogleFonts.lato(
                           textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18,),
                                 ),
                                   ),
                                      ),
                    Stack(
                      children: [
                        Container(
                        width: 170,
                        height: 50,
                        decoration: BoxDecoration(color: const Color(0xff00C393), borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Icon(Icons.remove, color: Colors.white,),
                              Icon(Icons.add, color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:50.0),
                         child: Center(
                           child: Container(
                             alignment: AlignmentDirectional.center,
                            width: 70,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0, 2.0), // shadow direction: bottom right
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:18.0),
                              child: Text('2',
                                      style: GoogleFonts.lato(
                               textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18,),
                                     ),
                                       ),
                            ),
                      ),
                         ),
                       ),
                      ],
                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                    Text('Total',
                                        style: GoogleFonts.lato(
                                 textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18,),
                                       ),
                                         ),
                                  Text('\$10.08',
                                        style: GoogleFonts.lato(
                                 textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18,fontWeight: FontWeight.bold),
                                       ),
                                         ),
                                  ],
                                ),
                              ),
                    ],),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:250.0, right: 32, left: 32),
              child: Container(
                decoration:  BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white,
                boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              child: Text('Avocado Blend With Topping Egg',
                                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14, fontWeight: FontWeight.bold,),
                                ),
                                                 ),
                            ),
                          ),
                          SizedBox( width: 40,),
                       Text('\$ 5',
                                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                       ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text("* 4.3",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Color(0xffFF7F23),),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("(45)",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black,),
                                  ),
                            ],
                          ),
                        Row(
                          children: [
                            Container(
                                  width: 30,
                                  height: 30,
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/Image.png'),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text("Jone’s Dishes",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: const Color(0xff00C393),),
                              ),
                          ],
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:170.0, bottom: 130, right: 15, left:15),
            )
          ],
        ),
      ),
    );
}
}