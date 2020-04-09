import 'package:flutter/material.dart';
import './screens/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String categoryValue = 'car';
  List<String> category = [
    'car',
    'house',
    'food',
    'sport',
    'sleep',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDownButton Example'),
        actions: <Widget>[
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Icon(
                Icons.category,
                color: Colors.white,
              ),
              iconSize: 24,
              onChanged: (String newValue) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage(category:newValue)),
                );
              },
              items: category.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Container(
                    child: Text(value),
                    width: 100,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Center(
        child: Text(categoryValue),
      ),
    );
  }
}
