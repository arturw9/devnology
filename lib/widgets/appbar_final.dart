import 'package:devnology/screens/home.dart';
import 'package:flutter/material.dart';

class AppBarFinal extends StatelessWidget with PreferredSizeWidget {
  const AppBarFinal({Key? key}) : super(key: key);

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
        ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
