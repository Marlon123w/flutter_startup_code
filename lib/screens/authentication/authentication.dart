import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/authentication/login.dart';
import 'package:flutter_basics/screens/authentication/register.dart';
import 'package:provider/provider.dart';
class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return Login(toggleView:  toggleView);
    } else {
      return Register(toggleView:  toggleView);
    }
  }
}