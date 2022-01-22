
import 'package:flutter/material.dart';
import 'package:air_chef/widget/assets.dart';

class PopularCollection extends StatelessWidget {
  final List<Map> collections = [
    {"title": "Food joint", "image": AssetImage('assets/images/ob1.png')},
    {"title": "Photos", "image": AssetImage('assets/images/ob1.png')},
    {"title": "Travel", "image": AssetImage('assets/images/ob1.png')},
    {"title": "Nepal", "image": AssetImage('assets/images/ob1.png')},
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo.shade300, Colors.indigo.shade500]),
            ),
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: _mainListBuilder,
          ),
        ],
    );
  }

  Widget _mainListBuilder(BuildContext context, int index) {
    if (index == 2) return _buildCollectionsRow();
    return _buildCollectionsRow();
  }

  // Widget _buildListItem() {
  //   return Container(
  //     color: Colors.white,
  //     padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(5.0),
  //       child: PNetworkImage(images[2], fit: BoxFit.cover),
  //     ),
  //   );
  // }

  // Container _buildSectionHeader(BuildContext context) {
  //   return Container(
  //     color: Colors.white,
  //     padding: EdgeInsets.symmetric(horizontal: 20.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: <Widget>[
  //         Text(
  //           "Collection",
  //           style: Theme.of(context).textTheme.title,
  //         ),
  //         FlatButton(
  //           onPressed: () {},
  //           child: Text(
  //             "Create new",
  //             style: TextStyle(color: Colors.blue),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Container _buildCollectionsRow() {
    return Container(
      color: Colors.white,
      height: 200.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              width: 150.0,
              height: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset( onBoardingAsset[index], fit: BoxFit.cover,),)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(collections[index]['title'],
                      )
                ],
              ));
        },
      ),
    );
  }
}