import 'package:flutter/material.dart';
import 'package:wepay/src/ui/maintab.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Wepay"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Login"),
          onPressed: () => Navigator.pushNamed(context, MainTab.routeName),
        ),
      ),
    );
  }
}
