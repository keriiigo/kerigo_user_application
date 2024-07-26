import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_user_app/view/languge_selecting_screen/lamguage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: HexColor('#F7F7F7'),
        fontFamily: 'Satoshi',
        brightness: Brightness.light,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black),
            bodySmall: TextStyle(color: Colors.black)),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: const Langugeselectingscreen(),
      themeMode: ThemeMode.system,
    );
  }
}
