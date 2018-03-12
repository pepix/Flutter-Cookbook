import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new CircularProgressIndicator(),
            ),
            new Center(
              child: new FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: "https://i.ytimg.com/vi/tMm7cr0ULwE/maxresdefault.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}