import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../widegets/button_widget.dart';
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

  File file;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path;
    setState(() {
      file = File(path);
    });
  }

  validate() {
    if (_formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    final fileImage = file != null ? basename(file.path) : 'No Image Selected';
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
                      decoration: InputDecoration(labelText: 'Detial'),
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
                        ButtonWidget(
                          text: 'Select Image',
                          icon: Icons.image,
                          onClicked: selectFile,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          fileImage,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
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
}
