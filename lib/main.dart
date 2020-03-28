import 'package:flutter/material.dart';

void main() {
  runApp(
     MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                 radius: 50.0,
                backgroundImage: AssetImage('images/dimond.png'),
              ),
              Text('Hannah Li', style: TextStyle(fontFamily: 'Pacifico', fontSize: 43.0, color: Colors.teal, fontWeight: FontWeight.bold),),
              SizedBox(width: 100.0, height: 20.0, child: Divider(color: Colors.teal.shade100,),),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal,),
                  title: Text('+1 343 777 1234', style: TextStyle(fontSize: 20.0, color: Colors.tealAccent),),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal,),
                  title: Text('hui@gmail.com', style: TextStyle(fontSize: 20.0, color: Colors.tealAccent),),
                ),
              ),
            ],
          ),
          ),
        ),
    );
  }
}


