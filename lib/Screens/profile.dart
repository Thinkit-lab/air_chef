import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget cards(image, title,) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 6.0,
        //   ),
        // ],
        // color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                     image, fit: BoxFit.fill,
                     width: 180,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:110.0, left: 30),
                    child: Container(
                      // alignment: AlignmentDirectional.bottomEnd,
                      child: Text(title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white,)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/back.png'))),
            title: const Center(
              child: Text('Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top:15.0, right: 18),
                child: Stack(
                  children: [ 
                    Icon(Icons.logout, color: Colors.black),
                    ]),
              ),
              ],
          ),
        bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed:(){
              Get.off(()=>HomePage());
            }, icon: Icon(Icons.home), color: Color(0xff00C393), hoverColor: Colors.black,),
            IconButton(onPressed:(){}, icon: Icon(Icons.shop)),
            IconButton(onPressed:(){}, icon: Icon(Icons.favorite)),
            IconButton(onPressed:(){}, icon: Icon(Icons.person)),
          ],
        ),
      ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: 
                  <Widget>[
                    Stack(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(shape: BoxShape.circle, 
                                        border: Border.all(color: Color(0xff00C393),),color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:140.0,top: 140),
                                      child: GestureDetector(
                                        onTap: (){},
                                        child: Container(
                                              width: 70,
                                         height: 50,
                                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff00C393),),
                                                  child: Icon(Icons.edit, color: Colors.white,),
                                                ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                                  child: Center(
                                    child: Container(
                                      width: 150,
                                      height: 150,
                                      child: CircleAvatar(backgroundImage: AssetImage('assets/images/Image.png',), radius: 20,),
                                    ),
                                  ),
                                ),
                                 
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal:18.0),
                       child: Center(
                         child: Text('Miekie Jones',
                                                       style: GoogleFonts.lato(
                                                textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold),
                                                      ),
                                                        ),
                       ),
                     ),
                     SizedBox(height: 5,),
                     Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.location_on, color: Color(0xff00C393),),
                           Text('23 Street, New York',
                                                         style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18,),
                                                        ),
                                                          ),
                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(18.0),
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         height: 100,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color:Color(0xff00C393),),
                         child: Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Column(
                                 children: [
                                   Text('345',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                  SizedBox(height: 10,),
                                  Text('Orders',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Text('15',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                  SizedBox(height: 10,),
                                  Text('Liked',
                                                             style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(color:  Colors.white, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                                            ),
                                                              ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:18.0),
                       child: Container(
                       alignment: AlignmentDirectional.topStart,
                       child: Text('Your Recent Orders',
                                                     style: GoogleFonts.lato(
                                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                                    ),
                                                      ),
                   ),
                     ),
                    CustomScrollView(
                      shrinkWrap: true,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.all(10.0),
                          sliver: SliverGrid.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            children: <Widget>[
                              cards('assets/images/Image(1).png', 'Brocoli',),
                              cards('assets/images/Image(2).png', 'Cabbage',),
                              cards('assets/images/Image(3).png', 'Mango'),
                              cards(
                                  'assets/images/Image(1).png', 'Pineapple',),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}