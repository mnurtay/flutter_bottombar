import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final Color color;
  ProfilePage({this.color});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: widget.color,
      ),
      backgroundColor: widget.color,
      body: Container(),
    );
  }
}
