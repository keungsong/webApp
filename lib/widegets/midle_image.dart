import 'package:flutter/material.dart';

class MidleImage extends StatefulWidget {
  @override
  _MidleImageState createState() => _MidleImageState();
}

class _MidleImageState extends State<MidleImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
height: 300,
margin: EdgeInsets.only(left:100,top:10,bottom:10,right:100),
child: Row(
  children:[
    Expanded(child: Container(
      height:MediaQuery.of(context).size.height,
      child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkGKJAORc92Dnl2OtwwhAc3Xi8QCs-FrS_0w&usqp=CAU',fit:BoxFit.cover),
    ),)
  ]
),
    );
  }
}