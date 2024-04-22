import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
class HttpExample extends StatelessWidget {
  const HttpExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post Reader',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Map<String ,dynamic>>_posts= [];
  bool _isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Reader'),
      ),
      body: _isLoading ? Center(
        child: CircularProgressIndicator()):
        _posts.isEmpty?Center(child: Text('No data available'),
        ): ListView.builder(
          itemCount: _posts.length,
          itemBuilder:(BuildContext context, int index) {
            final post= _posts[index];
            return Card (
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(post ['title'] as String),
                subtitle: Text(post['body'] as String),
              ),
              );
          }),
          floatingActionButton: FloatingActionButton(
           onPressed: (){
            setState(() {
              _isLoading=true;
            });
            fetchData();
           },
             child: const Icon(Icons.refresh),
            tooltip: 'Fetch Data',),
    );
  }
  Future <void>fetchData() async{
    final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200)
    {
      final List <dynamic> jsonData = json.decode(response.body)as List<dynamic>;
      setState(() {
        _posts = jsonData.cast<Map<String,dynamic>>();
        _isLoading=false;
     });
    }else {
      _posts =[] ;
      _isLoading= false ;
    }
  }
}