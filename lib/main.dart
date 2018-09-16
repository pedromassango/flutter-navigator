import 'package:flutter/material.dart';
import 'page_two.dart';
import 'page_three.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'Navigator Main Page'),
      routes: <String, WidgetBuilder>{
        '/page_two': (BuildContext context) => PageTwo(),
        '/page_three': (BuildContext context) => PageThree()

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: MaterialButton(
          child: new Text('Start Page 2'),
          color: Colors.amber,
          onPressed: () {
            Navigator.of(context).pushNamed('/page_two');
          },
        ),
      ),
    );
  }
}
