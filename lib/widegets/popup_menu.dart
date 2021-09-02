import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  @override
  _PopUpMenuState createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        padding: EdgeInsets.all(0),
        itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Container(
                    height: 50,
                    width: 130,
                    child: Row(children: [
                      Icon(AntIcons.user, color: Colors.black),
                      Container(
                          padding: EdgeInsets.only(left: 5, top: 5),
                          child: Text('My Profile')),
                    ]),
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Container(
                    height: 50,
                    width: 130,
                    child: Row(children: [
                      Icon(AntIcons.heart_outline, color: Colors.black),
                      Container(
                          padding: EdgeInsets.only(left: 5, top: 5),
                          child: Text('My Favorite')),
                    ]),
                  ))
            ]);
  }
}
