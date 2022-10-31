import 'package:fire_prac_insta/login_page.dart';
import 'package:fire_prac_insta/tab_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'loading_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _handleCurrentScreen();
  }
  
  Widget _handleCurrentScreen() {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const LoadingPage();
        } else {
          if(snapshot.hasData) {
            return TabPage(snapshot.data!);
          }
          return const LoginPage();
        }
      },
      );
  }
}