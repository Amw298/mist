import 'package:flutter/material.dart';
import 'package:mist/widgets/explore_button.dart';
import 'package:mist/widgets/home_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children:[
          Center(child: HomeLogo()),
          Positioned(
            bottom: 120,
            child: ExploreButton()
          )
        ]
      )
    );
  }
}
