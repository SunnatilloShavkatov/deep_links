import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String? data = Get.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Deep Link"),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Redirected: $data'),
        ),
      ),
    );
  }
}
