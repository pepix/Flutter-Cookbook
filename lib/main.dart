import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = "Web Images";

    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[400],
        accentColor: Colors.cyan,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Image.network("https://i.ytimg.com/vi/tMm7cr0ULwE/maxresdefault.jpg"),
      ),
    );
  }
}