import 'package:flutter/material.dart';
import 'package:mist/views/login_view.dart';
import 'package:mist/views/register_view.dart';
import 'package:mist/views/store_view.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              decoration:
                  BoxDecoration(border: Border(
                    bottom: BorderSide(color: Color(0xff1681ab))
                    ),
                  ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _HomeBarItem('      Sign In', LoginView()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  _HomeBarItem('Register', RegisterView()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  _HomeBarItem('Explore      ', Store()),
                ],
              )),
        ],
      ),
    );
  }
}

class _HomeBarItem extends StatelessWidget {
  final String title;
  final Widget view;
  const _HomeBarItem(this.title, this.view);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => view));
        },
        child: Text(
          title,
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(180, 49, 146, 184)),
        ));
  }
}
