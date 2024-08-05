import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_user_app/model/const_sizes.dart';
import 'package:kerigo_user_app/view/widgets/custom_botton.dart';
import 'package:pinput/pinput.dart';

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
            ),
            Pinput(
              defaultPinTheme: PinTheme(
                width: 35,
                height: 35,
                textStyle: const TextStyle(
                  fontSize: 22,
                  // color: ,
                ),
                decoration: BoxDecoration(
                    color: HexColor('#DADADA'),
                    border: Border.all(color: Colors.transparent)),
              ),
              length: 4,
            ),
            hight20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t receive OTP ? "),
                  GestureDetector(
                      child: Text(
                    'Resend OTP',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: HexColor('#3422F2'),
                        ),
                  ))
                ],
              ),
            ),
            Text("OTP expires in 30 seconds"),
            hight50,
            CostomeElevatedButton(text: 'Verify')
          ],
        ),
      ),
    ));
  }
}
