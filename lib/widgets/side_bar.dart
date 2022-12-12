import 'package:mist/views/home_view.dart';
import 'package:mist/controllers/backend.dart';
import 'package:mist/widgets/game_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/views/store_view.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.2,
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                fit: BoxFit.scaleDown,
                "assets/logo-no-background-purp.png",
                height: 55.0,
                filterQuality: FilterQuality.high,
              ),
            ]),
            _SideBarTab(
              title: "Store",
              iconData: Icons.store,
              onTap: () {
                gm_db.games[0].setLarge(true);
                StorePageController.jumpToPage(0);},
            ),
            _SideBarTab(
              title: "Library",
              iconData: Icons.library_books,
              
              onTap: () {
                gm_db.games[0].setLarge(false);
                StorePageController.jumpToPage(1);},
            ),
            Spacer(),
            _SideBarTab(
              title: "Logout",
              iconData: Icons.logout,
              onTap: () {Navigator.pop(context);},
            ),
          ],
        ));
  }
}

class _SideBarTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _SideBarTab({
    required this.iconData,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 30.0,
      ),
      title: Text(title,
          style: Theme.of(context).textTheme.bodyText1),
      onTap: onTap,
    );
  }
}
