import 'dart:io';

import 'package:toast/toast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ibraheem'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: FlatButton(
                color: Colors.redAccent,
                disabledColor: Colors.redAccent,
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.1),
                onPressed: () => _increment(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  'Increment',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: FlatButton(
                color: Colors.orangeAccent,
                disabledColor: Colors.orangeAccent,
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.1),
                onPressed: () => _decrement(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  'Decrement',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  dynamic _increment() {
    if(_counter == 20){
      return showToast(
        msg: 'You reached to limit',
        gravity: 0,
        duration: 3,
        background: Colors.pinkAccent,
      );
    }
    _counter = _counter + 1;
    setState(() {});
  }

  dynamic _decrement() {
    if (_counter == 0) {
      return showToast(
        msg: 'You can\'t decrease below than zero',
        gravity: 0,
        duration: 3,
        background: Colors.blueGrey,
      );
    } else {
      _counter = _counter - 1;
      setState(() {});
    }
  }

  void showToast({
    String msg,
    int duration,
    int gravity,
    Color background,
  }) {
    Toast.show(
      msg,
      context,
      duration: duration,
      gravity: gravity,
      backgroundColor: background,
    );
  }
}
