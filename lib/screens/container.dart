import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Column(mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 75,
            height: 75,
            color: Colors.amber[600],
            padding: EdgeInsets.all(8),
            child: Text('Hello'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.amber[800],
            padding: EdgeInsets.all(8),
            child: Text('Hello'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 50,
            height: 50,
            color: Colors.amber[900],
            padding: EdgeInsets.all(8),
            child: Text('Hello'),
          )
        ],
      ),
    );
  }
}