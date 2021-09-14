/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:web_app/services/firebase_services.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseServices _services = FirebaseServices();
    return StreamBuilder(
      stream: _services.banners.snapshots(),
      builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){

      if(snapshot.hasError){
        return Text('Sonmthing wrong');
      }
      if(snapshot.connectionState == ConnectionState.waiting){
        return Center(
          child:CircularProgressIndicator(),
        );
      }

      return Container(
        width:MediaQuery.of(context).size.width,
        height:400,
        child:new ListView(scrollDirection: Axis.horizontal,
        children: snapshot.data.docs.map((DocumentSnapshot document){
          return new Card(
            child:Image.network(document['image']),
          );
        }).toList(),
         
        )
      );
    });
  }
}*/