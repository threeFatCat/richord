import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final appTitle = 'RiChord';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Home(title: appTitle),
    );
  }
}

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String myTitle;

  void updateContent(title) {
    setState(() {
      myTitle = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFF1de9b6),
      ),
      body: Center(
        child: Text(myTitle ?? 'test'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('header'),
              decoration: BoxDecoration(color: Color(0xFF1de9b6)),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
                updateContent('hello');
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
                updateContent('world');
              },
            ),
          ],
        ),
      ),
    );
  }
}
