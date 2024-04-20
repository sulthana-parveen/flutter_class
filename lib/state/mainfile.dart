import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  int _counter =0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
       ),
       body: Center(
        child: Column(
          children: [
            Text('Counter: '),
            Text('$_counter', style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            
          ],
        ),
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),),
    );
  }
}