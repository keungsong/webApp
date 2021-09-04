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
                Container(
                   margin: EdgeInsets.only(left:100,top: 30,bottom: 30),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   
                    Container(
                     
                      child:Text('New Posts',style:TextStyle(fontSize: 30,fontWeight:FontWeight.bold))
                    )
                  ],)
                ),
                Divider(),
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
