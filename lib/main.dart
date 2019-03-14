import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HamroApp(),));

class HamroApp extends StatefulWidget {
  @override
  _HamroAppState createState() => _HamroAppState();
}

class _HamroAppState extends State<HamroApp> {
  String name = "";
  void _photoDesc() {
    setState(() {
      name = "This is Madhav Paudel Photo";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Madhav Paudel Photo"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image.asset("img/madhav.jpg"),
            RaisedButton(onPressed: _photoDesc, child: Text("PP Size Photo", style: TextStyle(fontSize: 40),),),
            Text(name, style: TextStyle(fontSize: 18,),),
          ],
        ),
      ),
    );
  }
}