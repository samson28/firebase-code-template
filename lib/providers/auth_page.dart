import 'package:firebase/screens/login.dart';
import 'package:firebase/screens/register.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return isLogin
        ? Login(
            onClickedSignUp: toggle,
          )
        : Register(
            onClickedSignIn: toggle,
          );
  }

  void toggle() => setState(() => isLogin = !isLogin);
}
