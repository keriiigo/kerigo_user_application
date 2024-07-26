import 'package:flutter/material.dart';
import 'package:kerigo_user_app/model/const_sizes.dart';
import 'package:hexcolor/hexcolor.dart';

class Langugeselectingscreen extends StatelessWidget {
  const Langugeselectingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'asset/images/image.png',
                  height: 225,
                  width: 335,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 309,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Change the color as needed
                        width: .5, // Change the width as needed
                      ),
                      right: BorderSide(
                        color: Colors.black, // Change the color as needed
                        width: .5, // Change the width as needed
                      ),
                      top: BorderSide(
                        color: Colors.black, // Change the color as needed
                        width: .5, // Change the width as needed
                      ),
                      // No bottom border
                    ),
                    color: HexColor('#F7F7F7'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
