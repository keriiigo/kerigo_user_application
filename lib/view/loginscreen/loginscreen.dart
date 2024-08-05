import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_user_app/model/const_sizes.dart';
import 'package:kerigo_user_app/view/otppage/otppage.dart';
import 'package:kerigo_user_app/view/personal_info/personal_info.dart';
import 'package:kerigo_user_app/view/widgets/custom_botton.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'asset/images/KERIGO_FINAL_LOGO.png',
              width: 136,
              height: 136,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'You need to register before\ngetting started',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Divider(
                    thickness: 2,
                    endIndent: 5,
                    indent: 25,
                  ),
                ),
                Flexible(
                    child: Text(
                  'Login or Signup',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                )),
                // ignore: prefer_const_constructors
                Expanded(
                    flex: 1,
                    child: const Divider(
                      thickness: 2,
                      endIndent: 25,
                      indent: 5,
                    ))
              ],
            ),
            hight30,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                    color: HexColor('#DADADA'),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Enter Phone Number',
                        hintStyle:
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: ColorToHex(
                                      Color.fromARGB(255, 118, 118, 118)),
                                ),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            hight30,
            CostomeElevatedButton(
              text: 'Continue',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Otppage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
