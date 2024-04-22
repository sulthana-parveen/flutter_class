import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Counter with ChangeNotifier{
  int _count=0;
  int get count => _count;
  void increment() {
    _count++;
    notifyListeners();
  }
}
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: ChangeNotifierProvider(
        create: (_) => Counter(),
        child: CounterPage(),),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [Text('Count:'),
          Text('${counter.count}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
         counter.increment();
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
      ),
    );
  }
}