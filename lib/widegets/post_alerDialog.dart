import 'package:flutter/material.dart';

class PostAlerDiaglog extends StatefulWidget {
  PostAlerDiaglog({Key key}) : super(key: key);

  @override
  _PostAlerDiaglogState createState() => _PostAlerDiaglogState();
}

class _PostAlerDiaglogState extends State<PostAlerDiaglog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(),
    );
  }
}
