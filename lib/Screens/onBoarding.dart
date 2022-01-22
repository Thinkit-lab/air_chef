// ignore_for_file: prefer_const_declarations, file_names

import 'package:air_chef/Screens/add_address.dart';
import 'package:air_chef/Screens/add_food.dart';
import 'package:air_chef/Screens/biography.dart';
import 'package:air_chef/Screens/cards.dart';
import 'package:air_chef/Screens/check_out.dart';
import 'package:air_chef/Screens/deactivate_account.dart';
import 'package:air_chef/Screens/edit_profile.dart';
import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/Screens/home2.dart';
import 'package:air_chef/Screens/location.dart';
import 'package:air_chef/Screens/login.dart';
import 'package:air_chef/Screens/my_cart.dart';
import 'package:air_chef/Screens/my_favourites.dart';
import 'package:air_chef/Screens/order.dart';
import 'package:air_chef/Screens/order_history.dart';
import 'package:air_chef/Screens/orders.dart';
import 'package:air_chef/Screens/payment.dart';
import 'package:air_chef/Screens/pre_order.dart';
import 'package:air_chef/Screens/pre_order2.dart';
import 'package:air_chef/Screens/processing.dart';
import 'package:air_chef/Screens/profile.dart';
import 'package:air_chef/Screens/profile2.dart';
import 'package:air_chef/Screens/profile_bio.dart';
import 'package:air_chef/Screens/saved_cards.dart';
import 'package:air_chef/Screens/search_foodmaker.dart';
import 'package:air_chef/Screens/set_availability.dart';
import 'package:air_chef/Screens/set_delivery_location.dart';
import 'package:air_chef/Screens/settings.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/biography_describtion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:air_chef/widget/network_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding1 extends StatefulWidget {
  static final String path = "lib/src/pages/onboarding/intro6.dart";

  const OnBoarding1({Key? key}) : super(key: key);
  @override
  _OnBoarding1State createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  final SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "Let the Chef cook for you in your own Kitchen",
    "Order home cooked food for your meal or party",
    "Become an Air Chef by cooking food for others either from your own kitchen or in their Kitchen",
  ];
  final List<String> subtitles = [
    "Book a chef as many hours you want and whenever you need from your own neighbourhood",
    "Order freshly cooked food from a home kitchen within your neighbourhood. You can either order for yourself or treat your guests.",
    "By becoming an Air Chef you can earn money by cooking or supply food for others within the neighbourhood. "
  ];
  final List<Color> colors = [
    const Color(0xff00C393),
    const Color(0xff00C393),
    const Color(0xff00C393),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00C393),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: <Widget>[
                Swiper(
                  loop: false,
                  index: _currentIndex,
                  onIndexChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  controller: _controller,
                  pagination: const SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Color(0xffF37032),
                      activeSize: 20.0,
                    ),
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return IntroItem(
                      title: titles[index],
                      subtitle: subtitles[index],
                      bg: colors[index],
                      imageurl: Image.asset( onBoardingAsset[index], fit: BoxFit.cover,),
                      // image: const AssetImage('assets/images/image 1.png'),
                
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
      
          ),
           Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
             width: MediaQuery.of(context).size.width,
             height: 60,
             padding: const EdgeInsets.symmetric(horizontal: 18),
             child: FlatButton(
                      color: const Color(0xffF37032),
                      child: const Text("Continue",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                      onPressed: () {
                        Get.off(()=> LoginPage());
                      },
                    ),
           ),
                  const SizedBox(
                    height: 30,
                  )
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Color? bg;
  final Image? imageurl;

  const IntroItem(
      {Key? key, required this.title, this.subtitle, this.bg, this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 46),
                    child: Container(
                         width: double.infinity,
                         decoration: const BoxDecoration( borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120.0), 
                         bottomRight: Radius.circular(120.0)), 
                         color: Color(0xff24D0A6),),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    // color: const Color(0xff24D0A6),
                      child: imageurl, 
                      ),
                    
                ]
              ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                title,
                style: GoogleFonts.mulish(
    textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    color: Colors.white),),
            ),
              ),
            if (subtitle != null) ...[
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
                child: Text(
                  subtitle!,
                  style: GoogleFonts.mulish(
    textStyle:const TextStyle(color: Colors.white, fontSize: 18.0),),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
            const SizedBox(height: 40.0),
            
          ],
        ),
      ),
    );
  }
}