import 'package:flutter/material.dart';

class PageThree extends StatefulWidget{
  @override
  _PageThreeState createState() => _PageThreeState();

}

class _PageThreeState extends State<PageThree>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text('Navigator Page 3'),
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: MaterialButton(
          child: new Text('This is the last page, click the arrow above to go back'),
        ),
      ),
    );
  }
}