import 'package:flutter/material.dart';
import 'package:newapp/pages/HomePage.dart';
import 'package:newapp/pages/Newtask.dart';
import 'package:newapp/pages/Login_screen.dart';
import 'package:newapp/pages/TaskPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => LoginScreen(),
        "homePage": (context) => HomePage(),
        "taskPage": (context) => TaskPage(),
        "newTask": (context) => NewTask(),
      },
    );
  }
}
