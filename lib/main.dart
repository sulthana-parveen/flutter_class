import 'package:flutter/material.dart';
import 'package:flutter_class/screens/align.dart';
import 'package:flutter_class/screens/bottomnavigation.dart';
import 'package:flutter_class/screens/card.dart';
import 'package:flutter_class/screens/chip.dart';
import 'package:flutter_class/screens/container.dart';
import 'package:flutter_class/screens/gestureninkwell.dart';
import 'package:flutter_class/screens/slider.dart';
import 'package:flutter_class/screens/snackbar.dart';
import 'package:flutter_class/screens/stack.dart';
import 'package:flutter_class/screens/tabbar.dart';
import 'package:flutter_class/screens/userinput.dart';
import 'package:flutter_class/state/mainfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:GesturenInkwell(),
    );
  }
}

