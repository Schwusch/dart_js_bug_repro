import 'other.dart';

class UsbDeviceWrapper {
  late final USBDevice device;

  UsbDeviceWrapper(dynamic device) {
    this.device = device;
  }
}

void subscribeUsbConnect(void Function(UsbDeviceWrapper) callback) =>
    usb!.subscribeConnect((event) => callback(UsbDeviceWrapper(event)));
