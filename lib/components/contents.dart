import 'package:flutter/material.dart';

class Contents extends StatefulWidget {
  final String contentTitle;
  Contents({Key key, this.contentTitle}) : super(key: key);

  ContentsState createState() => ContentsState();
}

class ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(widget.contentTitle ?? '***'),
      ),
    );
  }
}
