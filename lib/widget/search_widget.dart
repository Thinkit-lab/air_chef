import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: TextField(
        cursorColor: Color(0xff00C393),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              width: 0,
             color: Color(0xff00C393),
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff00C393),
          ),
          fillColor: Colors.white,
          hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 14),
          hintText: "Type of Food",
        ),
      ),
    );
  }
}