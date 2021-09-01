import 'package:flutter/material.dart';
import 'package:web_app/banner/slide_image.dart';
import 'package:web_app/widegets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Column(children: [
          SlideImage(),
        ],),
        Container(
          height: 80,

          child: Material(
            elevation: 0.0,
            child: TopBar())),
      ],)
    );
  }
}