import 'package:flutter/material.dart';

const String test = "いろはにほへとちりぬるをわかよたれそつねならむ\n000\n111\n222";
const TextStyle style1 = const TextStyle(
  fontSize: 30.0,
);

class GridScreen extends StatefulWidget {
  @override
  State createState() => new GridScreenState();
}

class GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Grid Screen"),
        // want to add any properties
      ),
      // Example for GridView.count
      body: new GridView.count(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        childAspectRatio: 2.0,
        addAutomaticKeepAlives: false,
        crossAxisCount: 2,
        children: <Widget>[
          new Container(color: Colors.amber,),
          new Container(color: Colors.greenAccent,),
          new Container(color: Colors.pinkAccent,),
          const Text('He\'d have you all unravel at the'),
          const Text('Heed not the rabble'),
          const Text('Sound of screams but the'),
          const Text('Who scream'),
          const Text('Revolution is coming...'),
          const Text('Revolution, they...'),
          const Text('He\'d have you all unravel at the'),
          const Text('Heed not the rabble'),
          const Text('Sound of screams but the'),
          const Text('Who scream'),
          const Text('Revolution is coming...'),
          const Text('Revolution, they...'),
        ],
      ),

      // Example for ListView
//      body: new ListView(
//        children: <Widget>[
//          new Text("ああああああ"),
//          new Divider(
//            height: 16.0,
//          ),
//          new Text(
//            "What's happened?\nI have a pen.",
//          ),
//          new Divider(
//            height: 32.0,
//            color: Colors.deepOrange,
//          ),
//          new Text(
//            test,
//            style: new TextStyle(
//              fontSize: 22.0,
//            ),
//            textAlign: TextAlign.center,
//            maxLines: 3,
//            softWrap: true,
//          ),
//          new Divider(),
//          new Text(test, style: style1,),
//          new Text(test, style: style1,),
//          new Text(test, style: style1,),
//        ],
//      ),

      // Example for Column
//      body: new Column(
//        children: <Widget>[
//          new Text("ああああああ"),
//          new Divider(
//            height: 16.0,
//          ),
//          new Text(
//            "What's happened?\nI have a pen.",
//          ),
//          new Divider(
//            height: 32.0,
//            color: Colors.deepOrange,
//          ),
//          new Text(
//            test,
//            style: new TextStyle(
//              fontSize: 22.0,
//            ),
//            textAlign: TextAlign.center,
//            maxLines: 3,
//            softWrap: true,
//          ),
//          new Divider(),
//          new Text(test, style: style1,),
//          new Text(test, style: style1,),
//          new Text(test, style: style1,),
//        ],
//      ),


    );
  }
}