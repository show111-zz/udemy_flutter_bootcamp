import 'package:flutter/material.dart';
import 'package:udemy_flutter_bootcamp/chat/screens/chat_screen.dart';
import 'package:udemy_flutter_bootcamp/chat/screens/login_screen.dart';
import 'package:udemy_flutter_bootcamp/chat/screens/registration_screen.dart';
import 'package:udemy_flutter_bootcamp/chat/screens/welcome_screen.dart';

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.name,
      routes: {
        WelcomeScreen.name: (context) => WelcomeScreen(),
        RegistrationScreen.name: (context) => RegistrationScreen(),
        LoginScreen.name: (context) => LoginScreen(),
        ChatScreen.name: (context) => ChatScreen(),
      },
    );
  }
}
