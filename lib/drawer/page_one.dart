import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final String title;
  PageOne(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text('This is $title'),
      ),
    );
  }
}
