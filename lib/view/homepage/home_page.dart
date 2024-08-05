import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 33),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 10),
                  child: Text(
                    'Plan your trip',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: HexColor('#2D2D2D'),
                        ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, right: 15),
                        child: Image.asset(
                          'asset/images/KERIGO_FINAL_LOGO.png',
                          height: 47,
                          width: 47,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
