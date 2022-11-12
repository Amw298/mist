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
                "assets/logo-no-background-purp.png", // replace with mist logo
                height: 55.0,
                filterQuality: FilterQuality.high,
              ),
            ]),
            _SideBarTab(
              title: "Store",
              iconData: Icons.store,
              onTap: () {},
            ),
            _SideBarTab(
              title: "Library",
              iconData: Icons.library_books,
              onTap: () {},
            )
          ],
        ));
  }
}

class _SideBarTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _SideBarTab({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 30.0,
      ),
      title: Text(title,
          style: Theme.of(context).textTheme.bodyText1,
          overflow: TextOverflow.ellipsis),
      onTap: onTap,
    );
  }
}
