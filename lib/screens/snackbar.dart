import 'package:flutter/material.dart';

class SnackbarWidget extends StatefulWidget {
  const SnackbarWidget({super.key});

  @override
  State<SnackbarWidget> createState() => _SnackbarWidgetState();
}

class _SnackbarWidgetState extends State<SnackbarWidget> {
  String? _displayText = "";

  void _showSnackBar() {
    final snackBar = SnackBar(
      content: Text('This is a snackbar'),
      duration: Duration(seconds: 4),
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _displayText = 'Undo button clicked';
            });
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              _showSnackBar();
            }, child: Text('Show snack bar')),
            SizedBox(
              height: 20,
            ),
            Text(_displayText.toString()),
          ],
        ),
      ),
    );
  }
}