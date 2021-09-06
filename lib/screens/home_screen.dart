import 'package:flutter/material.dart';
import 'package:web_app/banner/slide_image.dart';
import 'package:web_app/screens/new_post.dart';
import 'package:web_app/screens/post.dart';
import 'package:web_app/widegets/bottom_bar.dart';
import 'package:web_app/widegets/midle_image.dart';
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
                   margin: EdgeInsets.only(left:100,top: 30,bottom: 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   
                    Container(
                     
                      child:Text('New Posts',style:TextStyle(fontSize: 30,fontWeight:FontWeight.bold))
                    )
                  ],)
                ),
                Container(
                  margin: EdgeInsets.only(left:100,right:100),
                  child: Divider(
                    
                  ),
                ),
                NewPostScreen(),
               // MidleImage(),

                SizedBox(height:100),
                 Container(
                  margin: EdgeInsets.only(left:100,right:100),
                  child: Divider(
                    
                  ),
                ),
                BottomBarScreen(),
                
               
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
