import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GesturenInkwell extends StatefulWidget {
  const GesturenInkwell({super.key});

  @override
  State<GesturenInkwell> createState() => _GesturenInkwellState();
}

class _GesturenInkwellState extends State<GesturenInkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('gesture'),),
      body: Center(child: Column(
        children: [
         
         GestureDetector(
          onTap: (){
            print('Gesture');
          },
           child: Container(
            height: 150,
            width: 150,
            color: Colors.blue,
            child: Center(child: Text('Tap me', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
           ),
         ),
         InkWell(
          onTap: (){
            print('Hi inkwell');
          },
           child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(child: Text('Tap'),),
           ),
         )
        ],
      ),),
    );
  }
}