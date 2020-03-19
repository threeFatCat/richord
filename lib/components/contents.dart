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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(widget.contentTitle ?? '***'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem beatae accusantium a maxime totam natus illo dolorem, eligendi praesentium odit, deserunt exercitationem ab molestias dignissimos tenetur. Iste laudantium sunt explicabo.'),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
