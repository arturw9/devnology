import 'package:devnology/screens/home.dart';
import 'package:flutter/material.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  const AppBarCustomizada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0XFF2E3746),
        automaticallyImplyLeading: false,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Home())));
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 24.0, right: 14),
              child: Image.asset(
                'lib/assets/images/devnology.png',
                width: 250,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.white,
            onPressed: () {},
          ),
        ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
