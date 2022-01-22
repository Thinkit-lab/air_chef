import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


class BiographyDescribtion extends StatelessWidget {
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";

  const BiographyDescribtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new DescriptionTextWidget(text: description),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() => new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 100) {
      firstHalf = widget.text.substring(0, 100);
      secondHalf = widget.text.substring(100, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: secondHalf.isEmpty
            ? Text(firstHalf)
            : Column(
                children: <Widget>[
                  Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf)),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            flag ? "show more" : "show less",
                            style: TextStyle(color: Color(0xff00C393),),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                  ),
                ],
              ),
      ),
    );
  }
}