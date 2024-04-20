import 'package:flutter/material.dart';

class SliderAlertDialog extends StatefulWidget {
  const SliderAlertDialog({super.key});

  @override
  State<SliderAlertDialog> createState() => _SliderAlertDialogState();
}

class _SliderAlertDialogState extends State<SliderAlertDialog> {
  double _sliderValue = 0.0;

  void _showValueDialog(double value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Slider Value'),
            content: Text('The current value is $value '),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Scroll the slider'),
            Slider(
              value: _sliderValue,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                  _showValueDialog(newValue);
                });
              },
              min: 0,
              max: 100,
              divisions: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  _showValueDialog(_sliderValue ?? 0.0);
                },
                child: Text('Show value'))
          ],
        ),
      ),
    );
  }
}