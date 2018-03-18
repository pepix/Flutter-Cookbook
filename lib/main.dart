import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:image/chat.dart';
import 'package:image/grid.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Application",
    theme: new ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[400],
      accentColor: Colors.cyan,
    ),
    //home: new MyApp(),
    //home: new ChatScreen(),
    home: new GridScreen(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var title = "Web Images";
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

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
                    new MaterialPageRoute(
                        builder: (context) => new SecondScreen(comment: "this is comment",)
                    ),
                  );
                },
                child: new Text("Launch Second Screen"),
              ),
            ),
            new Center(
              child: new SelectionButton()
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
              title: new Text("Width: ${screenWidth.toString()}"),
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
  // Declare a field that hold a comment
  final String comment;

  //DetailScreen({Key key, @required this.todo}) : super(key: key);
  SecondScreen({Key key, @required this.comment}) : super(key: key);

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
          child: new Text(comment),
        ),
      ),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sellection Screen"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(12.0),
            child: new RaisedButton(
              onPressed: (){
                Navigator.pop(context, 'YES!');
              },
              child: new Text("YES"),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(12.0),
            child: new RaisedButton(
              onPressed: (){
                Navigator.pop(context, 'NO!');
              },
              child: new Text("NO"),
            ),
          )
        ],
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: new Text("Pick an option, any option!"),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SelectionScreen()),
    );

    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("${result}")));
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