@JS()
library web_usb;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('navigator.usb')
external Usb? get usb;

@JS('USB')
@staticInterop
class Usb {}

typedef USBConnectionEventListener = void Function(USBDevice event);

extension PropsUsb on Usb {
  void subscribeConnect(USBConnectionEventListener listener) {
    callMethod(this, 'addEventListener', [
      'connect',
      allowInterop((USBConnectionEvent event) => listener(event.device))
    ]);
  }
}

@JS()
@staticInterop
class USBDevice {
  external USBDevice();
}

@JS()
@staticInterop
class USBConnectionEvent {
  external USBConnectionEvent();
}

extension PropsUSBConnectionEvent on USBConnectionEvent {
  USBDevice get device => getProperty(this, 'device');
}