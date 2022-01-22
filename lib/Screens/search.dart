import 'package:air_chef/Screens/home.dart';
import 'package:air_chef/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {

  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final List<Map> schoolLists = [
    {
      "foodname": "Edgewick Scchol",
    },
    {
      "foodname": "Xaviers International",
    },
    {
      "foodname": "Kinder Garden",
    },
    {
      "foodname": "WilingTon Cambridge",
    },
    {
      "foodname": "Fredik Panlon",
    },
    {
      "foodname": "Whitehouse International",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      appBar: AppBar(
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){},
              child: const Image(image: AssetImage('assets/images/back.png'))),
            title: Padding(
              padding: const EdgeInsets.only(right:32.0),
              child: Center(
                child: Text('Search',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 170),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: SearchWidget(),
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 140),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Last Search',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text('Delete all',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.timelapse_outlined, color: Colors.black45,),
          Text(schoolLists[index]['foodname'],
             style: TextStyle(
                color: Colors.black45, fontSize: 13, letterSpacing: .3)),
          Icon(Icons.close, color: Colors.black45),
        ],
      ),
    );
  }
}