import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/assets.dart';
import 'package:air_chef/widget/search_simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class MyFavourites extends StatelessWidget {
  const MyFavourites({Key? key}) : super(key: key);

  Widget cards(image, title, price, rating, model) {
    return Container(
      height: 240,
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
                  Image.asset(
                   image, fit: BoxFit.fill,
                   width: 180,
                    height: 95,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      child: Icon(Icons.cancel, color: Colors.white,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      alignment: AlignmentDirectional.topEnd,
                      child: Icon(Icons.favorite, 
                      color: Color(0xff00C393),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:70.0, left: 8),
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                        // alignment: AlignmentDirectional.bottomEnd,
                        child: Icon(Icons.add,
                        color: Colors.white, size: 12,),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                        ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xff00C393), size: 15,),
                        Text(rating,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)
                            ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ " + price,
                      style: TextStyle(
                          color: Color(0xff00C393),
                          fontWeight: FontWeight.bold,
                          fontSize: 12)
                          ),
                  Text(model,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 12))
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
            title: const Center(
              child: Text('My Favourites',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            centerTitle: true,
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
                    Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0,),
                      child: Row(
                        children: [
                          Expanded(child: SimpleSearchWidget(hintText: 'Search Food')),
                          Container(
                            width: 40,
                            height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8), bottomRight: Radius.circular(8)),color: Color(0xff00C393),),
                            child: Icon(Icons.keyboard_voice, color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                    ),
                    SizedBox(height: 30,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:18.0),
                       child: Container(
                       alignment: AlignmentDirectional.topStart,
                       child: Text('Your Favourited Foods',
                                                     style: GoogleFonts.lato(
                                              textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                                    ),
                                                      ),
                   ),
                     ),
                     SizedBox(height: 10,),
                    CustomScrollView(
                      shrinkWrap: true,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.all(20.0),
                          sliver: SliverGrid.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            children: <Widget>[
                              cards('assets/images/Image(1).png', 'Brocoli', '30', '4.4', 'American'),
                              cards('assets/images/Image(2).png', 'Cabbage', '37', '5.0', 'Italian'),
                              cards('assets/images/Image(3).png', 'Mango', '22', '3.5', 'American'),
                              cards(
                                  'assets/images/Image(1).png', 'Pineapple', '90', '4.0', 'Italian'),
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