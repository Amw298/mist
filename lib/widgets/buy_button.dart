import 'package:flutter/material.dart';

import '../views/pay_view.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PayView()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * .02,
            vertical: MediaQuery.of(context).size.height * .02
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5),
            color: appbarcolor, borderRadius: BorderRadius.circular(5)
          ),
          child: Text(
            "Buy Game",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .02,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ));
  }
}