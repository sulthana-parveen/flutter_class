import 'package:flutter/material.dart';

class SwitchnSubmit extends StatelessWidget {
  final String? text;
  final bool isChecked;
  final String radioValue;
  final bool switchValue;

  const SwitchnSubmit(
      {super.key,
      this.text,
      required this.isChecked,
      required this.radioValue,
      required this.switchValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data'),),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(children: [
        Text('Name $text'),
        Text('Degree Status: ${isChecked ? 'yes' : 'No'}'),
        Text('Rank : $radioValue'),
        Text('Ready to join : ${switchValue ? 'Yes' : 'No'}')
      ],),
      ),
    );
  }
}