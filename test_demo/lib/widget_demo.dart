import 'package:flutter/material.dart';

void main() {
  runApp(WidgetDemoApp());
}

class WidgetDemoApp extends StatefulWidget {
  String title;
  String message;
  WidgetDemoApp({this.title, this.message});

  @override
  _WidgetDemoAppState createState() => _WidgetDemoAppState();
}

class _WidgetDemoAppState extends State<WidgetDemoApp> {

  String  get title => widget.title;
  String  get message => widget.message; 
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}