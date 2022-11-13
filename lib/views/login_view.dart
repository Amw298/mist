import 'package:flutter/material.dart';
import 'package:mist/widgets/explore_button.dart';
import 'package:mist/widgets/userinfo_textbox.dart';
import 'package:mist/widgets/home_logo.dart';

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
            child: UserInfoText("Please enter your email address")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.45,
            child: UserInfoText("Please enter your password")
          )          
        ]
      )
    );
  }
}
