import 'package:flutter/material.dart';
import 'package:flutter_class/screens/switchandsubmit.dart';

class UserInput extends StatefulWidget {
  const UserInput({super.key});
  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  bool _checkBoxValue = false;
  String _radioValue = "Option 1";
  bool _switchValue = false;
  final TextEditingController _textEditingController = TextEditingController();

  void _submitData() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchnSubmit(
      text: _textEditingController.text,
      isChecked: _checkBoxValue, radioValue: _radioValue, switchValue: _switchValue)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Job feedback'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(labelText: 'Enter your name'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Checkbox(
                    value: _checkBoxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkBoxValue = value!;
                      });
                    }),
                Text('I have completed Degree')
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Radio(
                    value: 'First',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    }),
                Text('First Class'),
                Radio(
                    value: 'Second',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    }),
                Text('Second Class')
              ],
            ),
            Row(
              children: [
                Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Ready to join'),
                    )
              ],
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              _submitData();
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}