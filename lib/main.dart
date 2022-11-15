import 'package:mist/views/store_view.dart';
import 'package:mist/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          hintColor: Color.fromARGB(255, 45, 45, 45) ,
          scaffoldBackgroundColor: Colors.grey.shade900,
          backgroundColor: Colors.grey.shade900,
          primaryColor: Colors.grey.shade900,
          iconTheme: const IconThemeData().copyWith(color: Colors.white),
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            headline2: const TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              fontSize: 12.0,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
            ),
            bodyText1: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
            bodyText2: TextStyle(
              color: Colors.grey.shade500,
              letterSpacing: 1.0,
            ),
          ),
        ),
        title: 'Mist',
        debugShowCheckedModeBanner: false,
        home: HomeView());
  }
}
