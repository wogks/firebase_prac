import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Instagram Clone',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.all(50)),
            SignInButton(Buttons.Google, onPressed: (){})
          ],
        ),
      ),
    );
  }
}
