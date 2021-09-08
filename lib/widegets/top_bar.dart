import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:web_app/form/post_form.dart';
import 'package:web_app/widegets/button_widget.dart';
import 'package:web_app/widegets/popup_menu.dart';
import 'package:web_app/widegets/side_nav_bar.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  final _formKey = GlobalKey<FormState>();
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
          padding: EdgeInsets.only(right: 50),
          child: Row(children: [
            extraLargeScreenGrid
                ? Container()
                : Container(
                    child: InkWell(
                      onTap: () {
                        showMaterialModalBottomSheet(
                            expand: false,
                            enableDrag: false,
                            isDismissible: false,
                            barrierColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            duration: Duration(seconds: 0),
                            context: context,
                            builder: (context) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 280,
                                        child: SideNavBar(),
                                      ),
                                      Container(),
                                      Expanded(
                                          child: Container(
                                        color: Colors.transparent,
                                      ))
                                    ],
                                  ),
                                ));
                      },
                      child: Icon(AntIcons.menu),
                    ),
                  ),
            Icon(FeatherIcons.feather, size: 45, color: Colors.blue),
            Container(
              padding: EdgeInsets.only(left: 5, top: 8),
              child: Text(
                'Company name',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        extraLargeScreenGrid
            ? Container(
                height: 40,
                width: 250,
                child: TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 2),
                        child: Icon(FeatherIcons.search,
                            color: Colors.blue, size: 22),
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
              )
            : Container(),
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
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                right: -40.0,
                                top: -40.0,
                                child: InkResponse(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey,
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('Information'),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Name'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: 'price'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Detail'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ButtonWidget(
                                              text: 'Select Image',
                                              icon: Icons.image,
                                              onClicked: () {},
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'No Image',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RaisedButton(
                                          color: Colors.blue,
                                          child: Text(
                                            "Post",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            if (_formKey.currentState
                                                .validate()) {
                                              _formKey.currentState.save();
                                            }
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
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
                        Icons.translate,
                        size: 26,
                        color: Colors.blue,
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
