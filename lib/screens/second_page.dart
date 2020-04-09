import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  final String category;

  const SecondPage({Key key, this.category}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(child: Text(widget.category),),
    );
  }
}