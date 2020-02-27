import 'package:flutter/material.dart';

void main() {
  return runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RiChord',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RiChord'),
          backgroundColor: Color(0xFF1de9b6),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
