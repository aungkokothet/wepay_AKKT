import 'package:flutter/material.dart';
import 'package:wepay/src/ui/wigets/card.dart';
import 'package:wepay/src/ui/wigets/roundedcontainer.dart';
import 'package:wepay/src/ui/wigets/space.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  String text;
  bool isobsure = false;
  String balance = "1000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            space40(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Balances",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  space40(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "SGD",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                         // fontWeight: FontWeight.bold,
                         // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "1,000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                         // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.pinkAccent,
                    thickness: 0.8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "MMK",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                         // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "100,000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        //  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  space40(),
                  space40(),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 200,
              child:
                  MyStatefulWidget(), //Image.asset("assets/images/logo.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Color.fromARGB(255, 240, 108, 155) : Colors.white,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Image.asset("assets/images/logo.jpg"),
        ),
      ),
    );
  }
}
