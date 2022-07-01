import 'package:flutter/material.dart';

import 'other.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  doTheThing(USBDevice device) {}

  void onConnect(USBDevice device) => doTheThing(device);

  @override
  Widget build(BuildContext context) {
    usb?.subscribeConnect(onConnect);
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('hello world')),
      ),
    );
  }
}
