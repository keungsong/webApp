import 'dart:html';

import 'package:ars_progress_dialog/dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../services/firebase_services.dart';
import '../services/firebase_services.dart';

import 'package:firebase/firebase.dart' as fb;

class PostForm extends StatefulWidget {
  PostForm({Key key}) : super(key: key);

  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  FirebaseServices _services = FirebaseServices();
  final _formKey = GlobalKey<FormState>();

  var _nameController = TextEditingController();
  var _priceController = TextEditingController();
  var _descriptionController = TextEditingController();
  var _fileNameTextControll = TextEditingController();
  var _fileLogoTextControll = TextEditingController();
  ImagePicker imagePicker = ImagePicker();
  File file;
  bool _imageSelected = true;

  bool _visible = false;
  String _url;
  String _name;
  String _description;

  //FirebaseStorage storage = FirebaseStorage.instance;
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  validate() {
    if (_formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    ArsProgressDialog progressDialog = ArsProgressDialog(context,
        blur: 2,
        backgroundColor: Colors.orange.withOpacity(.3),
        animationDuration: Duration(milliseconds: 500));
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
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        labelText: 'Name*',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  /* TextFormField(
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Price*',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                    /*validator: (value) {
                      if (value.isEmpty) {
                        return 'required field';
                      }
                      return null;
                    },*/
                  ),*/
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    maxLines: 10,
                    textInputAction: TextInputAction.next,
                    controller: _descriptionController,
                    decoration: InputDecoration(
                        labelText: 'Description*',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5))),
                    /* validator: (value) {
                      if (value.isEmpty) {
                        return 'required field';
                      }
                      return null;
                    },*/
                  ),
                  /* SizedBox(
                    height: 8,
                  ),*/
                  Container(
                    color: Colors.grey[200],
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 90,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 12, bottom: 10),
                      child: Column(
                        children: [
                          Row(children: [
                            Text('ProductImage  '),
                            SizedBox(
                              width: 10,
                            ),
                            AbsorbPointer(
                              absorbing: true,
                              child: SizedBox(
                                width: 300,
                                height: 30,
                                child: TextField(
                                  controller: _fileNameTextControll,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '(.jpg/.png)',
                                      border: OutlineInputBorder(),
                                      contentPadding:
                                          EdgeInsets.only(left: 20)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FlatButton(
                                color: Colors.blue,
                                onPressed: () {
                                  uploadStorage();
                                },
                                child: Text(
                                  'SelectImage',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ]),
                          SizedBox(
                            height: 8,
                          ),
                          Row(children: [
                            Text('Company Logo'),
                            SizedBox(
                              width: 10,
                            ),
                            AbsorbPointer(
                              absorbing: true,
                              child: SizedBox(
                                width: 300,
                                height: 30,
                                child: TextField(
                                  controller: _fileLogoTextControll,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '(.jpg/.png)',
                                      border: OutlineInputBorder(),
                                      contentPadding:
                                          EdgeInsets.only(left: 20)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FlatButton(
                                color: Colors.blue,
                                onPressed: () {
                                  uploadStorageLogo();
                                },
                                child: Text(
                                  'SelectImage',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ]),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      color: Colors.blue,
                      child: Text(
                        "Post Now",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (_nameController.text.isEmpty) {
                          return _services.showMyDialog(
                              title: 'New Post',
                              message: 'required',
                              context: context);
                        }
                        if (_descriptionController.text.isEmpty) {
                          return _services.showMyDialog(
                              title: 'New Post',
                              message: 'required',
                              context: context);
                        }
                        progressDialog.show();
                        _services
                            .uploadDataToDb(_url, _nameController.text,
                                _descriptionController.text)
                            .then((downloadUrl) {
                          if (downloadUrl != null) {
                            progressDialog.dismiss();
                            _services.showMyDialog(
                                title: 'New Post',
                                message: 'Saved Successfully',
                                context: context);
                          }
                        });
                        _nameController.clear();
                        _priceController.clear();
                        _descriptionController.clear();
                        _fileNameTextControll.clear();
                        _fileLogoTextControll.clear();
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
  }

  void uploadImage({@required Function(File file) onSelected}) {
    InputElement uploadInput = FileUploadInputElement()..accept = 'image/*';
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final file = uploadInput.files.first;
      final reader = FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((event) {
        onSelected(file);
      });
    });
  }

  // upload selected image to db
  void uploadStorage() {
    final dateTime = DateTime.now();
    final path = 'ProductImage/$dateTime';
    uploadImage(onSelected: (file) {
      if (file != null) {
        setState(() {
          _fileNameTextControll.text = file.name;
          _imageSelected = false;
          _url = path; // this path (url upload)
        });
        fb
            .storage()
            .refFromURL('gs://booking-b6c08.appspot.com')
            .child(path)
            .put(file);
      }
    });
  }

  void uploadLog({@required Function(File file) onSelected}) {
    InputElement uploadInput = FileUploadInputElement()..accept = 'image/*';
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final file = uploadInput.files.first;
      final reader = FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((event) {
        onSelected(file);
      });
    });
  }

  // upload selected image to db
  void uploadStorageLogo() {
    final dateTime = DateTime.now();
    final path = 'logoImage/$dateTime';
    uploadImage(onSelected: (file) {
      if (file != null) {
        setState(() {
          _fileLogoTextControll.text = file.name;
          _imageSelected = false;
          _url = path; // this path (url upload)
        });
        fb
            .storage()
            .refFromURL('gs://booking-b6c08.appspot.com')
            .child(path)
            .put(file);
      }
    });
  }
}
