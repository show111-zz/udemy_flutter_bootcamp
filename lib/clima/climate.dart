import 'package:flutter/material.dart';
import 'package:udemy_flutter_bootcamp/clima/screens/loading_screen.dart';

class ClimatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
