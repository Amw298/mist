import 'package:flutter/material.dart';

class LaunchGameButton extends StatelessWidget {
  const LaunchGameButton({super.key});

  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return InkWell(
        onTap: () {
          print("Launches Game!");
          //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * .02,
              vertical: MediaQuery.of(context).size.height * .02),
          decoration: BoxDecoration(
              color: appbarcolor, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "Launch Game",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .02,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ));
  }
}
