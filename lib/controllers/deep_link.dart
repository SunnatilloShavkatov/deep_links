import 'dart:async';
import 'package:flutter/services.dart';

abstract class Bloc {
  void dispose();
}

class DeepLink extends Bloc {
  //Event Channel creation
  static const stream = const EventChannel('https.mobile.deeplink.uz/events');

  //Method channel creation
  static const platform = const MethodChannel(
    'https.mobile.deeplink.uz/channel',
  );

  StreamController<String> _stateController = StreamController();

  Stream<String> get state => _stateController.stream;

  Sink<String> get stateSink => _stateController.sink;

  //Adding the listener into contructor
  DeepLink() {
    // Checking application start by deep link
    startUri().then((value) => _onRedirected(value));
    // Checking broadcast stream, if deep link was clicked in opened appication
    stream.receiveBroadcastStream().listen((d) => _onRedirected(d));
  }

  _onRedirected(String? uri) {
    stateSink.add(uri ?? '');
  }

  @override
  void dispose() {
    _stateController.close();
  }

  Future<String?> startUri() async {
    try {
      return platform.invokeMethod('initialLink');
    } on PlatformException catch (e) {
      return "Failed to Invoke: '${e.message}'.";
    }
  }
}
