import 'package:flutter/material.dart';
import 'package:wepay/src/manager/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wepay Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Color.fromARGB(255,240,108,155), //240,108,155
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: appRoutes,
      initialRoute: '/',
    );
  }
}
