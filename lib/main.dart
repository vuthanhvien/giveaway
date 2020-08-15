import 'package:flutter/material.dart';
import 'package:giveaway/screens/bar.dart';
import 'package:giveaway/screens/login.dart';
import 'package:giveaway/screens/search.dart';
import 'package:giveaway/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: LoginRoute(),
      routes: {
        '/': (context) => BarRoute(),
        '/login': (context) => LoginRoute(),
        '/welcome': (context) => WelcomeRoute(),
        '/search': (context) => SearchScreen(),
      },
    );
  }
}
