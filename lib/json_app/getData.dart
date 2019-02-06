import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  final String url = "https://jsonplaceholder.typicode.com/posts?_limit=10";
  List res;
  var data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var res = await http.get(
        // Encode the URL
        Uri.encodeFull(url),
        // Only accept JSON Response
        headers: {"Accept": "application/json"});

    // print(res.body);
    setState(() {
      var convertDataToJson = jsonDecode(res.body);
      data = convertDataToJson;
    });
    return 'Success';
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Http Get Request')),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Text(
                          data[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        new Text(data[index]['body']),
                        new Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
