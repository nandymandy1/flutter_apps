import 'package:flutter/material.dart';
import './chatScreen.dart';

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Chat App"),
        ),
        body: new ChatScreen());
  }
}
