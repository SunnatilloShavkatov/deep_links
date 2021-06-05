import 'package:deep_links/controllers/deep_link.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventsPage extends StatelessWidget {
  final String text;

  const EventsPage({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeepLink _bloc = Provider.of<DeepLink>(context);
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Deep Link Events"),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: StreamBuilder<String>(
        stream: _bloc.state,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container(
              child: Center(child: Text('No deep link was used  ')),
            );
          } else {
            return Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Redirected: ${snapshot.data}'),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}