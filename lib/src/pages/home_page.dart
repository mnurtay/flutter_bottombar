import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Color color;
  HomePage({this.color});
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: widget.color,
      ),
      backgroundColor: widget.color,
      body: Container(),
    );
  }
}
