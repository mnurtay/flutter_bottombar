import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  final Color color;
  FavoritePage({this.color});
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
        backgroundColor: widget.color,
      ),
      backgroundColor: widget.color,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 7, top: 10),
              ),
              style: TextStyle(fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}
