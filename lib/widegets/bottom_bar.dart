import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 100, right: 100, top: 50, bottom: 50),
      child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 1.0,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 5, top: 8),
                        child: Text(
                          'Join Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, top: 20),
                  child: Row(children: [
                    Icon(
                      Ionicons.mail_outline,
                      color: Colors.redAccent,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('company@gmail.com',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, top: 20),
                  child: Row(children: [
                    Icon(
                      FeatherIcons.phone,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('0301234567',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, top: 20),
                  child: Row(children: [
                    Icon(
                      Ionicons.logo_whatsapp,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('+8562012345678',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, top: 20),
                  child: Row(children: [
                    Icon(
                      AntIcons.facebook,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('Facebook',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, top: 20),
                  child: Row(children: [
                    Icon(
                      Icons.location_city,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('Company Location ',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    )
                  ]),
                ),
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(left: 100, right: 100),
                  child: Divider(),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('copyright@2021',
                            style: TextStyle(fontSize: 18, color: Colors.grey)),
                      ],
                    ))
              ],
            ),
          ]),
    );
  }
}
