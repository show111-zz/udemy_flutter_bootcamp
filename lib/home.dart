import 'package:flutter/material.dart';
import 'package:udemy_flutter_bootcamp/todoey/tasks_screen.dart';
import 'package:udemy_flutter_bootcamp/xylophone/XylophoneApp.dart';
import 'package:udemy_flutter_bootcamp/dice/dice_page.dart';
import 'package:udemy_flutter_bootcamp/quizzler/Quizzler.dart';
import 'bitcoin/bitcoin_main.dart';
import 'calculator/screens/bmi_calculator.dart';
import 'chat/chat_main.dart';
import 'clima/climate.dart';
import 'destini/destini_page.dart';
import 'navigation/navigation_page.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home list page',
      routes: {
        '/xylophone_page': (context) => XylophoneApp(),
        '/dice_page': (context) => DicePage(),
        '/quizzler_page': (context) => Quizzler(),
        '/destini_page': (context) => DestiniPage(),
        '/bmi_calculator_page': (context) => BMICalculator(),
        '/navigation_page': (context) => NavigationPage(),
        '/climate_page': (context) => ClimatePage(),
        '/bitcoin_page': (context) => BitcoinMain(),
        '/chat_page': (context) => FlashChat(),
        '/todoey_page': (context) => TasksScreen(),
      },
      home: HomeListPage(),
    );
  }
}

class HomeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home List Page'),),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('xylophone_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/xylophone_page'); },),
          ListTile(title: Text('dice_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/dice_page'); },),
          ListTile(title: Text('quizzler_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/quizzler_page'); },),
          ListTile(title: Text('destini_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/destini_page'); },),
          ListTile(title: Text('bmi_calculator_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/bmi_calculator_page'); },),
          ListTile(title: Text('navigation_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/navigation_page'); },),
          ListTile(title: Text('climate_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/climate_page'); },),
          ListTile(title: Text('bitcoin_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/bitcoin_page'); },),
          ListTile(title: Text('chat_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/chat_page'); },),
          ListTile(title: Text('todoey_page'),trailing: Icon(Icons.forward), onTap: (){ Navigator.pushNamed(context, '/todoey_page'); },),
        ],
      ),
    );
  }
}


