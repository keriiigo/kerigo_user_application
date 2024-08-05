import 'package:flutter/material.dart';

class Otppage extends StatelessWidget {
  const Otppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              'asset/images/image copy.png',
              width: 184,
              height: 170.98,
            ),
            Padding(
              padding: EdgeInsets.only(top: 45),
              child: Text(
                'We have sent a verification code to:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                '+91 9645099003',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
