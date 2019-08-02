import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  final Color color;
  FavoritePage({this.color});
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
        backgroundColor: widget.color,
      ),
      backgroundColor: widget.color,
      body: Container(),
    );
  }
}
