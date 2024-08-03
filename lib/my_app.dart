import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_user_app/view/languge_selecting_screen/lamguage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: HexColor('#F7F7F7'),
        fontFamily: 'Satoshi-Medium',
        brightness: Brightness.light,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: 'Satoshi-Medium'),
            bodySmall: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: Colors.black,
                fontWeight: FontWeight.normal)),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontFamily: 'Satoshi300',
              color: Colors.white,
              fontWeight: FontWeight.w700),
          bodySmall: TextStyle(
              fontFamily: 'Satoshi-Light',
              color: Colors.white,
              fontWeight: FontWeight.w400),
        ),
      ),
      home: const Langugeselectingscreen(),
      themeMode: ThemeMode.system,
    );
  }
}
