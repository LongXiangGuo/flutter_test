import 'package:flutter/material.dart';

void main() {

  runApp(ScrollDemoApp(List<String>.generate(1000, (index)=> "Item ${index}" )));
}

class ScrollDemoApp extends StatefulWidget {

  List<String> items;
  ScrollDemoApp(this.items);

  @override
  _ScrollDemoAppState createState() => _ScrollDemoAppState();
}

class _ScrollDemoAppState extends State<ScrollDemoApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:  ListView.builder(
         itemCount: widget.items.length ,
         itemBuilder: (conetxt, index){
           return ListTile(
             title: Text(widget.items[index]),
           );
         },
          
       )
    );
  }
}