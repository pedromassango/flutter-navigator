import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget{
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Navigator Page 2'),
      backgroundColor: Colors.blue,),
      body: new Center(
        child: MaterialButton(child: new Text('Start Page 3'),
          color: Colors.blue,
          onPressed: (){
          Navigator.of(context).pushNamed('/page_three');
          },
        ),
      ),
    );
  }

}