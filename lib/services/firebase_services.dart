import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference banners =
      FirebaseFirestore.instance.collection('ImageSlide');
      CollectionReference productData = 
      FirebaseFirestore.instance.collection('ProductData');

  FirebaseStorage storage = FirebaseStorage.instance;



  Future <String>uploadDataToDb(url,name,description)async{
    String downloadUrl = await storage.ref(url).getDownloadURL();
    if(downloadUrl != null){
     productData.doc(name).set({
        'image':downloadUrl,
        'name':name,
        'description':description,

      });
    }
    return downloadUrl;
  }

}
