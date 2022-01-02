import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Deep Link Events"),
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
