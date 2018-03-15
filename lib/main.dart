import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Application",
    theme: new ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[400],
      accentColor: Colors.cyan,
    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = "Web Images";

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new Center(
              child: new MyInkWellButton(),
            ),
            new Center(
              child: new MyButton(),
            ),
            new Center(
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new SecondScreen()),
                  );
                },
                child: new Text("Launch Second Screen"),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text("Maps"),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text("Album"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Container(
                      height: 400.0,
                      margin: const EdgeInsets.all(5.0),
                      color: Colors.indigo,
                    )
                )
              ],
            )
          ],
        )
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          // Navigate to first screen
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text("Go back!"),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text("Tap!"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
      onDoubleTap: () {
        final snackBar = new SnackBar(
          content: new Text("Double Tap!"),
          duration: new Duration(
            milliseconds: 500,
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        margin: new EdgeInsets.all(12.0),
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme
              .of(context)
              .buttonColor,
          borderRadius: new BorderRadius.circular(16.0),
        ),
        child: new Text("My Button"),
      ),
    );
  }
}

class MyInkWellButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("Tap!")));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text("Flat Button"),
      ),
    );
  }
}