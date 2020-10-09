import 'package:flutter/material.dart';
import 'package:wepay/src/ui/maintab.dart';
import 'package:wepay/src/ui/wigets/space.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 240, 108, 155),
        title: Center(child: Text("We Pay Wallet",style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        child: Container(
          child: ListView(
           // mainAxisAlignment: MainAxisAlignment.start,
           // mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              space10(),
              TextField(
                decoration: InputDecoration(
                    labelText: "User Name",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              space10(),
              TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
              space40(),

              RaisedButton(
                textColor: Colors.white,
                color: Color.fromARGB(255, 240, 108, 155),
                child: Text("Log in"),
                onPressed: () =>Navigator.pushNamed(context, MainTab.routeName),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(100.0),
                ),
              ),
              FlatButton(
                child: Text("Register"),
                //color: Color.fromARGB(255, 240, 108, 155),
                onPressed: () => Navigator.pushNamed(context, MainTab.routeName),
              ),
              space40(),
            MyStatefulWidget(),
            ],
          ),
        ),
      )
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
