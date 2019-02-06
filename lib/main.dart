import 'package:flutter/material.dart';
import './json_app/json_app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'My Apps', home: JsonApp());
  }
}
