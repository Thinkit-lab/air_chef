// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Item {
  const Item(this.name);
  final String name;
// final Icon icon;
}
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Item ?selectedUser;
  List<Item> users = <Item>[
    const Item('Breakfast'),
    const Item('Lunch'),
    const Item('Dinner'),
  ];
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<Item>(
      hint:  Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Text("Category"),
      ),
      value: selectedUser,
      onChanged: (Item ?Value) {
        setState(() {
          selectedUser = Value!;
        });
      },
      items: users.map((Item user) {
        return  DropdownMenuItem<Item>(
          value: user,
          child: Container(
            width: MediaQuery.of(context).size.width-62,
            height: 50,
            child: Expanded(
              child: Row(
                children: <Widget>[
                  // user.icon,
                  // SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      user.name,
                      style: GoogleFonts.lato(
                       textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                             ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
