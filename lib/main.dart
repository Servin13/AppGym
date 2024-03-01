import 'package:flutter/material.dart';
import 'package:gym/screens/onboarding_screen.dart';
import 'package:gym/screens/register_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      routes: {
        "login": (context) => RegisterScreen(),
        "onboarding": (context) => OnBoardingScreen(),
      },
    );
  }
}
