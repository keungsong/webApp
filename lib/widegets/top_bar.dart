import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:web_app/widegets/popup_menu.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;
    var mobileScreenGrid = currentWidth > 481;


    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.only(right:50),
          child: Row(children: [
            Icon(AntIcons.radar_chart, size: 45, color: Colors.blue),
            Container(
                padding: EdgeInsets.only(left: 5, top: 8),
                child: Text('Company name',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)))
          ]),
        ),
        Container(
          height: 40,
          width: 250,
          child: TextField(
            cursorColor: Colors.blue,
            decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 2),
                  child:
                      Icon(FeatherIcons.search, color: Colors.blue, size: 22),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25, top: 30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontSize: 15,
                ),
                hintText: 'Search...'),
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Row(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      padding: EdgeInsets.all(18),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        child: Text(
                          'Home',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ]),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      'Who we are ?',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
            Container(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      'Post Bid',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
            Container(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      'Company',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
            Container(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      'Individual',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
            Container(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      'Contact us',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
            
            Container(
              padding: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.all(18),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'SignUp',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Tooltip(
                message: 'Launguges',
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.language,
                        size: 26,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Tooltip(
                message: 'Notification',
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      Icon(
                        AntIcons.bell_outline,
                        size: 26,
                        color: Colors.black87,
                      ),
                      Positioned(
                          top: 2,
                          right: 4,
                          child: Stack(
                            children: [
                              Icon(Icons.brightness_1,
                                  size: 10, color: Colors.red)
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            PopUpMenu(),
          ],
        ),
      ]),
    );
  }
}
