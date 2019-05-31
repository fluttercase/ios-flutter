//
//  Bridge.swift
//  flutterminix

import Flutter
import UIKit

public class FlutterBridge{
    public static func register(controller: FlutterViewController) {
        let channel = FlutterMethodChannel(name: "flutter_bridge", binaryMessenger: controller);
        channel.setMethodCallHandler { (call, result) in
            if (call.method == "close") {
                // let args = call.arguments as! Dictionary<String, Any>;
                // print(args);
                controller.dismiss(animated: true, completion: nil);
            }
        }
    }
}
