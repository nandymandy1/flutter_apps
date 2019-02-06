import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

// STATELESS WIDGET
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My App',
      home: new HomePage(),
      theme: new ThemeData(
          primarySwatch: Colors.green,
          brightness: Brightness.dark,
          accentColor: Colors.red),
    );
  }
}

// Statefull Widget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";

  var clicks = 0;

  void _inc() {
    setState(() {
      clicks++;
    });
  }

  void _dec() {
    if (clicks > 0) {
      setState(() {
        clicks--;
      });
    }
  }

  Widget _bodyWidget() {
    return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(clicks.toString(), style: new TextStyle(fontSize: 30)),
            new RaisedButton(
              child: new Text(
                'Inc.',
                style: new TextStyle(color: Colors.white),
              ),
              color: Colors.green[800],
              onPressed: _inc,
            ),
            new RaisedButton(
              child: new Text(
                'Dec.',
                style: new TextStyle(color: Colors.white),
              ),
              color: Colors.red[500],
              onPressed: _dec,
            )
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(child: new Text('Hello World')),
        backgroundColor: Colors.green[800],
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _inc,
      ),
      backgroundColor: Colors.greenAccent[60],
    );
  }
}
