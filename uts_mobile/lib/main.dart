import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'login_page.dart';
import 'home.dart';
import 'about.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => Home(),
        '/about': (context) => About(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
