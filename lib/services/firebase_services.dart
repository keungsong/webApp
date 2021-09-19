import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirebaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference banners =
      FirebaseFirestore.instance.collection('ImageSlide');
  CollectionReference productData =
      FirebaseFirestore.instance.collection('ProductData');

  FirebaseStorage storage = FirebaseStorage.instance;

  Future<String> uploadDataToDb(url, pName, pDescription) async {
    String downloadUrl = await storage.ref(url).getDownloadURL();
    if (downloadUrl != null) {
      productData.doc(pName).set({
        'image': downloadUrl,
        'logoImage': downloadUrl,
        'name': pName,
        'description': pDescription
      });
    }
    return downloadUrl;
  }

  Future<void> showMyDialog({title, message, context}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
