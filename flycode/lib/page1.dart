import 'package:flutter/material.dart';
import 'package:flycode/FlutterBridge.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key}) : super(key: key);

  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios),
          onPressed: _close,
        ),
      ),
      body: Center(child: Text('Page1'),),
    );
  }
  _close () async {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    } else {
      FlutterBridge.close();
    }
  }
}