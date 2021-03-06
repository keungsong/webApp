import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:web_app/constants/constants.dart';
import 'package:web_app/helpers/responsive_helper.dart';
import 'package:web_app/post/post_card.dart';
import 'package:web_app/services/firebase_services.dart';

class Posts extends StatelessWidget {
  //final DocumentSnapshot document;

  //Posts({this.document});

  MediaQueryData mediaQuery;

  FirebaseServices _services = FirebaseServices();
  @override
  Widget build(BuildContext context) {
    return /*Container(
      margin: EdgeInsets.only(left: 100, top: 30, right: 100),
      child: Container(
        child: GridView.count(
          crossAxisCount: 4,
          childAspectRatio: 1.40,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network('', fit: BoxFit.cover),
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(''),
                              ),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0)),
                                  padding: EdgeInsets.all(18),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Text(
                                        'View',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0)),
                                  padding: EdgeInsets.all(18),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Text(
                                        'Apply',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(16),
                          child: Text('Date:9/08/2021')),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );*/

        Container(
            width: MediaQuery.of(context).size.width,
            child: StreamBuilder(
              stream: _services.productData.snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Something wrong...'),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Wrap(
                  direction: Axis.horizontal,
                  children: snapshot.data.docs.map((DocumentSnapshot document) {
                    return PostCard(document);
                  }).toList(),
                );
              },
            ));
  }
}
