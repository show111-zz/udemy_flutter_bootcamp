import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter_bootcamp/todoey/models/task_data.dart';
import 'package:udemy_flutter_bootcamp/todoey/screens/tasks_screen.dart';

class TodoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:  (_) => TaskData(),
//      create:  (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


