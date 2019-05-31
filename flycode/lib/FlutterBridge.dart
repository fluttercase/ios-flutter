import 'package:flutter/services.dart';

class FlutterBridge{
    static const MethodChannel _channel = const MethodChannel('flutter_bridge');
    static close () async {
      await _channel.invokeMethod('close', {});
    }
}
