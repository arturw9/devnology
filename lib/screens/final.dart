import 'package:devnology/widgets/appbar_final.dart';
import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const AppBarFinal(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 110),
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  color: Color(0XFF2E3746),
                  borderRadius: BorderRadius.all(
                    Radius.circular(80.0),
                  )),
              child: const Icon(
                Icons.done,
                size: 50,
                color: Color(0XFFF9C705),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              alignment: Alignment.center,
              height: 100,
              width: 200,
              child: const Text(
                "Order Placed!",
                style: TextStyle(
                    fontSize: 32,
                    color: Color(0XFF2E3746),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, bottom: 16),
              alignment: Alignment.center,
              height: 50,
              width: 200,
              child: const Text(
                "Your order was placed successfully. For more details, check All My Orders page under Profile tab",
                style: TextStyle(fontSize: 12, color: Color(0XFF2E3746)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 80, top: 80),
              width: 152,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0XFF2E3746)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    const Text(
                      "MY ORDERS",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
