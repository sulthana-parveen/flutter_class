
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_class/bloc/counter_bloc.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: BlocProvider(create: (context) => CounterBloc(),
      child: const MyHomePage(),),
    );

  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: BlocBuilder<CounterBloc, int>(builder: (context, count) {
        return Center(
          child: Text('$count'),
        );
      }),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          counterBloc.add(CounterIncrement());
      }),
      FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
            counterBloc.add(CounterDecrement());
      }),
      ],),
    );
  }
}

