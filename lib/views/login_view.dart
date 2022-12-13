import 'package:flutter/material.dart';
import 'package:mist/widgets/home_explore_button.dart';
import 'package:mist/widgets/home_top_bar.dart';
import 'package:mist/widgets/login_button.dart';
import 'package:mist/widgets/userinfo_textbox.dart';
import 'package:mist/widgets/home_logo.dart';
import 'package:mist/widgets/home_top_bar.dart';
import 'package:mist/widgets/line.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children:[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            child: HomeTopBar()
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Text(
              'Please sign in with your Mist account:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.05,
                color: Color(0xff1681ab)
              ),
            )
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.55,
            child: UserInfoText("Email Address")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.45,
            child: UserInfoText("Password")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            child: LoginButton()
          )           
        ]
      )
    );
  }
}
