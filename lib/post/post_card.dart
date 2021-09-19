import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final DocumentSnapshot document;

  PostCard(this.document);

  @override
  Widget build(BuildContext context) {
    return /*Container(
      margin: EdgeInsets.only(
        left: 100,
        top: 30,
      ),
      child: SizedBox(
        height: 220,
        width: 220,
        child: Card(
          color: Colors.orange.withOpacity(.9),
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 220,
                    width: double.infinity,
                    child: Image.network(document['image']),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );*/
        Container(
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
                          child: Image.network(document['logoImage'],
                              fit: BoxFit.cover),
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(document['name']),
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
                          child: Text(document['description'])),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
