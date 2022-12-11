import 'package:flutter/material.dart';
import 'package:mist/widgets/home_explore_button.dart';
import 'package:mist/widgets/login_button.dart';
import 'package:mist/widgets/userinfo_textbox.dart';
import 'package:mist/widgets/home_logo.dart';

import '../widgets/paybutton.dart';

class PayView extends StatelessWidget {
  const PayView({super.key});

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
              'Payment:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.05,
                
                color: Color(0xff1681ab)
              ),
            )
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * .23,
            child: UserInfoText("Credit Card")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * .52,
            child: UserInfoText("CVC", width: .12,)
          ),
            Positioned(
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * .65,
            child: UserInfoText("MM/YY", width: .12,)
          ),
                    Positioned(
            bottom: MediaQuery.of(context).size.height * 0.45,
            left: MediaQuery.of(context).size.width * .23,
            child: UserInfoText("Address")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.45,
            left: MediaQuery.of(context).size.width * .52,
            child: UserInfoText("City")
          ),
                              Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            left: MediaQuery.of(context).size.width * .23,
            child: UserInfoText("State")
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            left: MediaQuery.of(context).size.width * .52,
            child: UserInfoText("Zip Code")
          ),
          
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            child: PayButton()
          )           
        ]
      )
    );
  }
}
