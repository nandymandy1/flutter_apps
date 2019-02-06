import 'package:flutter/material.dart';
import './chatApp/myChatApp.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'My Apps', home: new ChatApp());
  }
}
