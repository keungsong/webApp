import 'dart:html';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import '../widegets/button_widget.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:firebase/firebase.dart' as db;
import 'package:file_picker/file_picker.dart';

class PostForm extends StatefulWidget {
  PostForm({Key key}) : super(key: key);

  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  var _nameController = TextEditingController();
  var _priceController = TextEditingController();
  var _detailController = TextEditingController();
  ImagePicker imagePicker = ImagePicker();
  File file;

  //FirebaseStorage storage = FirebaseStorage.instance;
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  String imgUrl;

  Future selectFile() async {
    /* PickedFile pickedFile = await imagePicker.getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      file = File(pickedFile.path);
    });*/
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path;

    // setState(() => file = File(path));
  }

  validate() {
    if (_formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    //  final fileImage = file != null ? basename(file.path) : 'No Image Selected';
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
                      controller: _nameController,
                      decoration: InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'required field';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _priceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'price'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'required field';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _detailController,
                      decoration: InputDecoration(labelText: 'Detail'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'required field';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        file == null
                            ? Container(
                                width: double.infinity,
                                height: 150,
                                color: Colors.grey,
                                child: Center(
                                  child: RaisedButton(
                                    onPressed: () {
                                      selectFile();
                                    },
                                    color: Colors.blue,
                                    child: Text(
                                      'Select Image',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  selectFile();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          // image: FileImage(file),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                        SizedBox(
                          height: 8,
                        ),
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
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
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
  }

  void uploadImage({@required Function(File file) onSelected}) {
    InputElement uploadInput = FileUploadInputElement()..accept = 'image/*';
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final file = uploadInput.files.first;
      final reader = FileReader();
      reader.onLoadEnd.listen((event) {
        onSelected(file);
      });
    });
  }
}
