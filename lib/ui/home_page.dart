import 'package:deep_links/controllers/deep_link.dart';
import 'package:deep_links/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    DeepLink _bloc = Provider.of<DeepLink>(context);
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Deep Link"),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<String>(
            stream: _bloc.state,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: Text('No deep link was used  '));
              } else {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Redirected: ${snapshot.data}'),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
