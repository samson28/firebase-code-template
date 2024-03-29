import 'package:firebase/providers/auth_page.dart';
import 'package:firebase/screens/login.dart';
import 'package:firebase/screens/my_home_page.dart';
import 'package:firebase/screens/verify_email_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            } else if (snapshot.hasData) {
              return const VerifyEmailPage() /*const MyHomePage(title: "Hello world")*/;
            } else {
              return const AuthPage();
            }
          }),
    );
  }
}
