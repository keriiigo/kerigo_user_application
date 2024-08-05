import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_user_app/controler/provider/personal_info_provider/personal_info_provider.dart';
import 'package:kerigo_user_app/view/homepage/home_page.dart';
import 'package:kerigo_user_app/view/personal_info/widgets/personal_show_meneu-widget.dart';
import 'package:kerigo_user_app/view/widgets/mediom_costom_botton.dart';
import 'package:provider/provider.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PersonalInfoProvider>(
      builder: (context, value, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    Text('Personal information',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Container(
                  height: 48,
                  width: 343,
                  decoration: BoxDecoration(
                      color: HexColor('#DADADA'),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(6),
                        hintText: 'Name',
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Container(
                  height: 48,
                  width: 343,
                  decoration: BoxDecoration(
                      color: HexColor('#DADADA'),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(6),
                        hintText: '+91 9645099003',
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Container(
                  height: 48,
                  width: 343,
                  decoration: BoxDecoration(
                      color: HexColor('#DADADA'),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(6),
                        hintText: 'Email',
                        suffixText: '(Optional)',
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Container(
                  height: 48,
                  width: 343,
                  decoration: BoxDecoration(
                      color: HexColor('#DADADA'),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: value.genderController,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => DropDownAndRadio(),
                      );
                    },
                    readOnly: true,
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: HexColor('#767676'),
                        ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(6),
                        hintText: 'Gender',
                        suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                        hintStyle:
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: HexColor('#767676'),
                                ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      'By clicking continue, you agree to our ',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color:
                                ColorToHex(Color.fromARGB(255, 114, 114, 114)),
                          ),
                    ),
                    GestureDetector(
                        child: Text(
                      'T&Cs',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor('#3422F2'),
                          ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MediomCostomeElevatedButton(
                      text: 'Continue',
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
