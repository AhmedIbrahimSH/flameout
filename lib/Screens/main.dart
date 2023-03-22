import 'package:flameout/Screens/ApprovalScreen.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'MainScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LoginScreen(),
    );

  }
}





