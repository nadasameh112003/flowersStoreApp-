
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/splash.dart';
import 'package:flutter_ecommerce_app/provider/cart.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
      
          debugShowCheckedModeBanner: false,
          theme: lightMode,
           home: Splash()
           ),
    );
  }
}
