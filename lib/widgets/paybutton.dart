import 'package:flutter/material.dart';
import 'package:mist/views/home_view.dart';
import 'package:mist/views/login_view.dart';
import 'package:mist/views/store_view.dart';

import '../controllers/backend.dart';
import '../views/store_view.dart';

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() async {
        await gm_db.buy(currentgame);
        Navigator.pop(context);
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*.02, vertical: MediaQuery.of(context).size.height*.01),
        child: Text(
          "Complete Transaction",
          style: TextStyle(
          fontSize: MediaQuery.of(context).size.height*.02,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
        color: Color(0xff1681ab),
        borderRadius: BorderRadius.circular(5)),
      )
    );
  }
}
