import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB7b7b7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Deep Link"),
        centerTitle: true,
        elevation: 0.5,
      ),
    );
  }
}
