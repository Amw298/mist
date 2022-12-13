import 'package:flutter/material.dart';
import 'package:mist/widgets/home_explore_button.dart';
import 'package:mist/widgets/register_button.dart';
import 'package:mist/widgets/userinfo_textbox.dart';
import 'package:mist/widgets/home_logo.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
              'Please create your Mist account:',
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
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            child: UserInfoText("Please re-enter your password")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            child: UserInfoText("Please enter your date of birth")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: RegisterButton()
          )           
        ]
      )
    );
  }
}
