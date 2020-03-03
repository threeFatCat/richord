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

class Home extends StatelessWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(key);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFF1de9b6),
      ),
      body: Center(
        child: Content(),
      ),
    );
  }
}

class Content extends StatefulWidget {
  @override
  ContentState createState() => ContentState();
}

class ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) => Text('State Text');
}
