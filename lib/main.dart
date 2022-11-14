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
        title: 'Mist',
        debugShowCheckedModeBanner: false,
        home: HomeView());
  }
}
