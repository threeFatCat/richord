import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'components/contents.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final appTitle = 'Lorem';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
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

  void displayContent(title) {
    setState(() => myTitle = title);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Contents(contentTitle: myTitle),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 89.0,
              child: DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text('header'),
                ),
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                displayContent('hello');
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                displayContent('world');
              },
            ),
          ],
        ),
      ),
    );
  }
}
