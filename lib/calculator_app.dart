import "package:flutter/material.dart";

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator",
      home: new Calculator(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num1 = 0;
  var num2 = 0;
  var res = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void _add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void _sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void _multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void _divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 ~/ num2;
    });
  }

  void _clearFields() {
    setState(() {
      num1 = 0;
      num2 = 0;
      res = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Calculator'),
      ),
      body: new Container(
          padding: EdgeInsets.all(30.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output: $res",
                style: new TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number One"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number Two"),
                controller: t2,
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    color: Colors.red[500],
                    child: new Text(
                      '+',
                      style: new TextStyle(color: Colors.white),
                    ),
                    onPressed: _add,
                  ),
                  new MaterialButton(
                    color: Colors.green[500],
                    child: new Text(
                      '-',
                      style: new TextStyle(color: Colors.white),
                    ),
                    onPressed: _sub,
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    color: Colors.yellow[500],
                    child: new Text(
                      'X',
                      style: new TextStyle(color: Colors.black),
                    ),
                    onPressed: _multiply,
                  ),
                  new MaterialButton(
                    color: Colors.black,
                    child: new Text(
                      '/',
                      style: new TextStyle(color: Colors.white),
                    ),
                    onPressed: _divide,
                  )
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      color: Colors.teal,
                      child: new Text(
                        'Clear',
                      ),
                      onPressed: _clearFields,
                    )
                  ])
            ],
          )),
    );
  }
}
