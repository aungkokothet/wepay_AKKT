import 'package:flutter/material.dart';
import 'package:wepay/src/ui/wigets/roundedcontainer.dart';
import 'package:wepay/src/ui/wigets/space.dart';

class SendPage extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Image.asset("assets/images/logo.jpg"),
        ),
        backgroundColor: Colors.white, //Color.fromARGB(255, 240, 108, 155),
        title: Center(child: Text("We Pay Wallet",style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),),),
        actions: <Widget>[
          IconButton(
            color: Color.fromARGB(255, 240, 108, 155),
            icon: const Icon(Icons.settings_overscan),
            tooltip: 'Show History',
            onPressed: () {},
          ),
          IconButton(
            color: Color.fromARGB(255, 240, 108, 155),
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show History',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
