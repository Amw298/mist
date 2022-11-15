import 'package:flutter/material.dart';
import 'package:mist/widgets/explore_button.dart';
import 'package:mist/widgets/login_button.dart';
import 'package:mist/widgets/register_button.dart';
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
          const Center(child: HomeLogo()),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: ExploreButton()
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: LoginButton()
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.10,
            child: RegisterButton()
          )
        ]
      )
    );
  }
}
