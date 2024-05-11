// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/login.dart';
import 'package:flutter_ecommerce_app/pages/signup.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';
import 'package:flutter_ecommerce_app/widget/customScaffold.dart';
import 'package:flutter_ecommerce_app/widget/welcomeButton.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column( 
        children: [
          Flexible(
              flex: 30,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [ 
                        TextSpan(
                            text: 'Welcome!\n',
                            
                            style: TextStyle(
                              color: Color.fromARGB(255, 76, 141, 95),
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                                '\nEnter your personal details ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 76, 141, 95),
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
            
          Flexible(
            flex: 5,
            child: Align(
              alignment: Alignment.bottomCenter,
              
              child: Row(
                children: [
                   Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: Login(),
                      color: Colors.white54,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                  Expanded(
                    child:
                     WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: const SignUp(),
                      color: lightColorScheme.primary,
                      textColor: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}