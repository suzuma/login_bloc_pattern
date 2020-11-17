import 'package:flutter/material.dart';
import 'package:login_bloc_pattern/pages/home_page.dart';
import 'package:login_bloc_pattern/pages/loadding_page.dart';
import 'package:login_bloc_pattern/pages/login_page.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Autentificación con Bloc',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: LoaddingPage(),
      routes: {
        'load': (_) => LoaddingPage(),
        'login': (_) => LoginPage(),
        'home': (_) => HomePage(),
      },
    );
  }
}
