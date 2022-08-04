import 'package:flutter/material.dart';

import 'proxy_lib.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  doTheThing(UsbDeviceWrapper device) {}

  void onConnect(UsbDeviceWrapper device) => doTheThing(device);

  @override
  Widget build(BuildContext context) {
    subscribeUsbConnect(onConnect);
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('hello world')),
      ),
    );
  }
}
