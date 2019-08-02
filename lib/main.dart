import 'package:flutter/material.dart';
import 'package:flutter_bottombar/src/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Animation BottomBar',
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
