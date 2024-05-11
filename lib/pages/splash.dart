
// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/welcome.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_ecommerce_app/pages/signUp.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: (AnimatedSplashScreen(
          splashIconSize: 350,
          backgroundColor: Color.fromARGB(255, 249, 246, 246),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          splash: Image.asset(
            ("assets/img/logo.jpg"),
            height: double.infinity,
            width: double.infinity,),
          nextScreen: Welcome())),
    );}}

