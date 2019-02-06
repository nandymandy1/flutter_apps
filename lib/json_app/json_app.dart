import 'package:flutter/material.dart';
import 'dart:convert';

class JsonApp extends StatefulWidget {
  @override
  _JsonAppState createState() => _JsonAppState();
}

class _JsonAppState extends State<JsonApp> {
  List data;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Load Json')),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('load_json/person.json'),
            builder: (context, snapshot) {
              // Decode the Json
              var myData = jsonDecode(snapshot.data.toString());
              return new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Text('Username: ${myData[index]['username']}'),
                        new Text(
                            'Name: ${myData[index]['first_name']} ${myData[index]['last_name']}'),
                        new Text('Age: ${myData[index]['age']}'),
                        new Text('City: ${myData[index]['city']}')
                      ],
                    ),
                  );
                },
                itemCount: myData == null ? 0 : myData.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
