import 'package:flutter/material.dart';
import 'package:udemy_flutter_bootcamp/navigation/screen0.dart';
import 'package:udemy_flutter_bootcamp/navigation/screen2.dart';
import 'screen1.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: Screen0(),
      initialRoute: '/',
      routes: {
        '/': (context) => Screen0(),
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
      },
    );
  }
}
