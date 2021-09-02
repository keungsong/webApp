import 'package:flutter/material.dart';
import 'package:web_app/banner/slide_image.dart';
import 'package:web_app/screens/post.dart';
import 'package:web_app/widegets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SlideImage(),
                Posts(),
              ],
            ),
          ),
          Container(
              height: 80, child: Material(elevation: 0.0, child: TopBar())),
        ],
      ),
    ));
  }
}
