import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference banners =
      FirebaseFirestore.instance.collection('ImageSlide');

  FirebaseStorage storage = FirebaseStorage.instance;
}
