import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './drawer/page_one.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      home: new HomePage(),
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/a': (context) => new PageOne('Page One'),
        '/b': (context) => new PageOne('Page Two'),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text('Drawer App'),
            elevation:
                defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('Narendra Maurya'),
                accountEmail: new Text('mauryanarendra09@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: new Text('NM'),
                ),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: new Text('PM'),
                  )
                ],
              ),
              new ListTile(
                title: new Text('Page 1'),
                trailing: new Icon(Icons.arrow_upward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/a');
                },
              ),
              new ListTile(
                title: new Text('Page 2'),
                trailing: new Icon(Icons.arrow_downward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/b');
                },
              ),
              new ListTile(
                title: new Text('Page 3'),
                trailing: new Icon(Icons.arrow_left),
              ),
              new Divider(),
              new ListTile(
                title: new Text('Page 4'),
                trailing: new Icon(Icons.arrow_right),
              ),
              new ListTile(
                title: new Text('Close Drawer'),
                trailing: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
        body: new Container(
          child: new Center(
            child: new Text('Home Page'),
          ),
        ));
  }
}
