import 'package:flutter/material.dart';

class MyAlignWidget extends StatelessWidget {
  const MyAlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align'),),
      body: Center(child: Container(
        height: 250,
        width: 250,
        color: Colors.blue[50],
        child:const Align(
          alignment: Alignment.topRight,
          child: FlutterLogo(size: 68,)),
      ),),
    );
  }
}