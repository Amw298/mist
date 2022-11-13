import 'package:flutter/material.dart';
import 'package:mist/views/login_view.dart';

class UserInfoText extends StatelessWidget {
  final String hintText;
  const UserInfoText(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.height * 0.1,
          child: TextField(
            cursorColor: Colors.black,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Color(0xff1681ab)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff1681ab), width: 0.0),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ))
    ]);
  }
}
